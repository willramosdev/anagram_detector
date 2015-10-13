require 'spec_helper'
describe WordsController do
  #Testing a post using controller to create a true anagram
  describe "POST create true anagram" do
    it "expect a true anagram" do
      param = {firstWord: "ator", secondWord: "rota"} 
      word = Word.create(param)
      word.firstWord.should == "ator"
      word.secondWord.should == "rota"
      word.anagram.should == true
    end
  end
    #Testing a post using controller to create a False anagram
  describe "POST create false anagram" do
    it "expect a false anagram" do
      param = {firstWord: "aor", secondWord: "rota"} 
      word = Word.create(param)
      word.firstWord.should == "aor"
      word.secondWord.should == "rota"
      word.anagram.should == false
    end
  end

end
