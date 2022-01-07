
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ (* check_for_link ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {void* autoneg_failed; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_STATUS ;
 scalar_t__ E1000_STATUS_LU ;
 scalar_t__ E1000_SUCCESS ;
 void* FALSE ;
 scalar_t__ FIBER_LINK_UP_LIMIT ;
 void* TRUE ;
 int msec_delay (int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;

s32 e1000_poll_fiber_serdes_link_generic(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 i, status;
 s32 ret_val;

 DEBUGFUNC("e1000_poll_fiber_serdes_link_generic");







 for (i = 0; i < FIBER_LINK_UP_LIMIT; i++) {
  msec_delay(10);
  status = E1000_READ_REG(hw, E1000_STATUS);
  if (status & E1000_STATUS_LU)
   break;
 }
 if (i == FIBER_LINK_UP_LIMIT) {
  DEBUGOUT("Never got a valid link from auto-neg!!!\n");
  mac->autoneg_failed = TRUE;





  ret_val = mac->ops.check_for_link(hw);
  if (ret_val) {
   DEBUGOUT("Error while checking for link\n");
   return ret_val;
  }
  mac->autoneg_failed = FALSE;
 } else {
  mac->autoneg_failed = FALSE;
  DEBUGOUT("Valid Link Found\n");
 }

 return E1000_SUCCESS;
}
