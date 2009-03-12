require File.expand_path(File.dirname(__FILE__) + '<%= '/..' * class_nesting_depth %>/../spec_helper')

describe <%= class_name %> do
  describe "created by factory" do
    before(:each) do
      @factory = Factory.build(:<%= singular_name %>)
    end

    it "should be valid" do
      @factory.should be_valid
    end

    it "should have no errors after save" do
      @factory.save.should be_true
      @factory.should have(:no).errors
    end
  end
end
