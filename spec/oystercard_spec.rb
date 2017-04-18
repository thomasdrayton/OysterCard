require 'rspec'
require_relative '../lib/oystercard.rb'

describe Oystercard do
  it 'has a balance of zero' do
      expect(subject.balance).to eq(0)
    end

  describe "#top_up" do
    it "responds to top up with 1 argument" do
      expect { subject.to respond_to.top_up.with(1).argument }
    end
  end

  it 'raises an error if the maximum balance is exceeded' do
    max_balance = Oystercard::MAX_BALANCE
    subject.top_up(max_balance-1)
    expect{ subject.top_up(2) }.to raise_error 'Too high balance'
  end


end
