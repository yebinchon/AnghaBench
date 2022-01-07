
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mc_filter_type; } ;
struct ixgbe_addr_filter_info {scalar_t__ mta_in_use; } ;
struct ixgbe_hw {TYPE_1__ mac; struct ixgbe_addr_filter_info addr_ctrl; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_MCSTCTRL ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

s32 ixgbe_disable_mc_generic(struct ixgbe_hw *hw)
{
 struct ixgbe_addr_filter_info *a = &hw->addr_ctrl;

 DEBUGFUNC("ixgbe_disable_mc_generic");

 if (a->mta_in_use > 0)
  IXGBE_WRITE_REG(hw, IXGBE_MCSTCTRL, hw->mac.mc_filter_type);

 return IXGBE_SUCCESS;
}
