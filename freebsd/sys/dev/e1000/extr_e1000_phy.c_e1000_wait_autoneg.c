
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ (* read_reg ) (struct e1000_hw*,int ,scalar_t__*) ;} ;
struct TYPE_3__ {TYPE_2__ ops; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ E1000_SUCCESS ;
 scalar_t__ MII_SR_AUTONEG_COMPLETE ;
 scalar_t__ PHY_AUTO_NEG_LIMIT ;
 int PHY_STATUS ;
 int msec_delay (int) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,scalar_t__*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,scalar_t__*) ;

__attribute__((used)) static s32 e1000_wait_autoneg(struct e1000_hw *hw)
{
 s32 ret_val = E1000_SUCCESS;
 u16 i, phy_status;

 DEBUGFUNC("e1000_wait_autoneg");

 if (!hw->phy.ops.read_reg)
  return E1000_SUCCESS;


 for (i = PHY_AUTO_NEG_LIMIT; i > 0; i--) {
  ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS, &phy_status);
  if (ret_val)
   break;
  ret_val = hw->phy.ops.read_reg(hw, PHY_STATUS, &phy_status);
  if (ret_val)
   break;
  if (phy_status & MII_SR_AUTONEG_COMPLETE)
   break;
  msec_delay(100);
 }




 return ret_val;
}
