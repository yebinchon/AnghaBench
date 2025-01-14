
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_SUCCESS ;
 scalar_t__ ixgbe_get_lasi_ext_t_x550em (struct ixgbe_hw*,int*) ;
 scalar_t__ ixgbe_setup_internal_phy (struct ixgbe_hw*) ;

s32 ixgbe_handle_lasi_ext_t_x550em(struct ixgbe_hw *hw)
{
 bool lsc;
 u32 status;

 status = ixgbe_get_lasi_ext_t_x550em(hw, &lsc);

 if (status != IXGBE_SUCCESS)
  return status;

 if (lsc)
  return ixgbe_setup_internal_phy(hw);

 return IXGBE_SUCCESS;
}
