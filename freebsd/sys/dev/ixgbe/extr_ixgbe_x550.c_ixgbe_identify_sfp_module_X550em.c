
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ ixgbe_identify_module_generic (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_supported_sfp_modules_X550em (struct ixgbe_hw*,int*) ;

s32 ixgbe_identify_sfp_module_X550em(struct ixgbe_hw *hw)
{
 s32 status;
 bool linear;

 DEBUGFUNC("ixgbe_identify_sfp_module_X550em");

 status = ixgbe_identify_module_generic(hw);

 if (status != IXGBE_SUCCESS)
  return status;


 status = ixgbe_supported_sfp_modules_X550em(hw, &linear);

 return status;
}
