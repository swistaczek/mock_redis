require 'spec_helper'

describe '#exists(key)' do
  before { @key = 'mock-redis-test:45794' }

  it 'returns 0 for keys that do not exist' do
    @redises.exists(@key).should == 0
  end

  it 'returns 1 for keys that do exist' do
    @redises.set(@key, 1)
    @redises.exists(@key).should == 1
  end
end
