
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int*) ;} ;
struct e1000_phy_info {scalar_t__ autoneg_wait_to_complete; TYPE_1__ ops; int autoneg_mask; int autoneg_advertised; } ;
struct TYPE_4__ {int get_link_status; } ;
struct e1000_hw {TYPE_2__ mac; struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int MII_CR_AUTO_NEG_EN ;
 int MII_CR_RESTART_AUTO_NEG ;
 int PHY_CONTROL ;
 int TRUE ;
 scalar_t__ e1000_phy_setup_autoneg (struct e1000_hw*) ;
 scalar_t__ e1000_wait_autoneg (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int) ;

s32 e1000_copper_link_autoneg(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 phy_ctrl;

 DEBUGFUNC("e1000_copper_link_autoneg");




 phy->autoneg_advertised &= phy->autoneg_mask;




 if (!phy->autoneg_advertised)
  phy->autoneg_advertised = phy->autoneg_mask;

 DEBUGOUT("Reconfiguring auto-neg advertisement params\n");
 ret_val = e1000_phy_setup_autoneg(hw);
 if (ret_val) {
  DEBUGOUT("Error Setting up Auto-Negotiation\n");
  return ret_val;
 }
 DEBUGOUT("Restarting Auto-Neg\n");




 ret_val = phy->ops.read_reg(hw, PHY_CONTROL, &phy_ctrl);
 if (ret_val)
  return ret_val;

 phy_ctrl |= (MII_CR_AUTO_NEG_EN | MII_CR_RESTART_AUTO_NEG);
 ret_val = phy->ops.write_reg(hw, PHY_CONTROL, phy_ctrl);
 if (ret_val)
  return ret_val;




 if (phy->autoneg_wait_to_complete) {
  ret_val = e1000_wait_autoneg(hw);
  if (ret_val) {
   DEBUGOUT("Error while waiting for autoneg to complete\n");
   return ret_val;
  }
 }

 hw->mac.get_link_status = TRUE;

 return ret_val;
}
