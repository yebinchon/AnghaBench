
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ ixgbe_start_hw_gen2 (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_start_hw_generic (struct ixgbe_hw*) ;

s32 ixgbe_start_hw_X540(struct ixgbe_hw *hw)
{
 s32 ret_val = IXGBE_SUCCESS;

 DEBUGFUNC("ixgbe_start_hw_X540");

 ret_val = ixgbe_start_hw_generic(hw);
 if (ret_val != IXGBE_SUCCESS)
  goto out;

 ret_val = ixgbe_start_hw_gen2(hw);

out:
 return ret_val;
}
