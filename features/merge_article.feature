Feature: Merge Articles
  As a blog administrator
  In order to manage articles duplication
  I want to be able to merge two articles in my blog

  Background:
    Given the blog is set up

  Scenario: Admin should see option to merge article
    Given I am logged into the admin panel
    And I am on the edit article page for 1
    Then I should see "Merge Articles"

  Scenario: Non admin should not see option to merge article
    Given I am logged into the admin panel as publisher
    When I follow "Tab"
    Then I should not see "Merge Articles"
