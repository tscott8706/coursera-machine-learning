function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

scalar = (1/(2*m));
% Theta is 2x1
% X is 97x2
% Result of X*theta is 97x1, which is the same size as y
% 97x1 - 97x1 = 97x1 matrix
% In order to square it, they have to have matrix sizes be correct... both will be 97x1 !
% The cost should be 1x1... or a scalar value.  Thus we need the 97 to be on the insides.
% Hence, 1x97 * 97x1.  That means the first square should be transposed, and the second should not be.
first_term = ((X*theta) - y)'; % Will be 1x97
second_term = ((X*theta) -y); % Will be 97x1

% Summation is the same as matrix multiplication!
% Result will be 1x97 * 97x1 = 1x1
J = scalar * first_term * second_term;

% =========================================================================

end
