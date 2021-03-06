pragma solidity ^0.4.23;

import "./StandardToken.sol";

contract Ultiledger is StandardToken {
  string public name = "Ultiledger";
  string public symbol = "ULT";
  uint8 public decimals = 18;
  uint256 public INITIAL_SUPPLY = 45 * 100 * 1000 * 1000 * 10**uint256(decimals);

  constructor(address _owner) public {
    require(address(0) != _owner);

    totalSupply_ = INITIAL_SUPPLY;
    balances[_owner] = INITIAL_SUPPLY;
  }
}
