Feature: The game has an end
  To finish the game
  As someone who wants to move on with their life
  I want to find out whether I won or the computer won

  Background:
    Given I am on the homepage
    And I enter "Tom"
    And I press "submit"

  Scenario: I beat the computer
    Given the computer has chosen "Scissors"
    When I click "Rock"
    Then I should see "You won!"

  Scenario: The computer beats me
    Given the computer has chosen "Paper"
    When I click "Rock"
    Then I should see "You lost!"

  Scenario: I draw with the computer
    Given the computer has chosen "Rock"
    When I click "Rock"
    Then I should see "It's a draw."