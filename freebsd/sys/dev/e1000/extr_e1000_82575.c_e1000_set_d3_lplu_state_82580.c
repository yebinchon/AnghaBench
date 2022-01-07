
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_phy_info {scalar_t__ smart_speed; scalar_t__ autoneg_advertised; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_82580_PHY_POWER_MGMT ;
 int E1000_82580_PM_D3_LPLU ;
 int E1000_82580_PM_SPD ;
 scalar_t__ E1000_ALL_10_SPEED ;
 scalar_t__ E1000_ALL_NOT_GIG ;
 scalar_t__ E1000_ALL_SPEED_DUPLEX ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 scalar_t__ e1000_smart_speed_off ;
 scalar_t__ e1000_smart_speed_on ;

s32 e1000_set_d3_lplu_state_82580(struct e1000_hw *hw, bool active)
{
 struct e1000_phy_info *phy = &hw->phy;
 u32 data;

 DEBUGFUNC("e1000_set_d3_lplu_state_82580");

 data = E1000_READ_REG(hw, E1000_82580_PHY_POWER_MGMT);

 if (!active) {
  data &= ~E1000_82580_PM_D3_LPLU;






  if (phy->smart_speed == e1000_smart_speed_on)
   data |= E1000_82580_PM_SPD;
  else if (phy->smart_speed == e1000_smart_speed_off)
   data &= ~E1000_82580_PM_SPD;
 } else if ((phy->autoneg_advertised == E1000_ALL_SPEED_DUPLEX) ||
     (phy->autoneg_advertised == E1000_ALL_NOT_GIG) ||
     (phy->autoneg_advertised == E1000_ALL_10_SPEED)) {
  data |= E1000_82580_PM_D3_LPLU;

  data &= ~E1000_82580_PM_SPD;
 }

 E1000_WRITE_REG(hw, E1000_82580_PHY_POWER_MGMT, data);
 return E1000_SUCCESS;
}
