//SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;



contract Faucet{

    address[] public funders; 

    receive() external payable {}

    function addFunds() external payable{
        funders.push(msg.sender);
    }

    function justTesting() external pure returns(uint256){
        return 2 + 2;
    }

    function getAllFunders() public view returns (address[] memory){
        return funders;
    }

    function getFunderAtIndex(uint8 _index) external view returns(address){
        address[] memory _funders = this.getAllFunders();
        return _funders[_index];
    }

}

