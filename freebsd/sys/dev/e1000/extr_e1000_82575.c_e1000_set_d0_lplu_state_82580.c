
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_phy_info {scalar_t__ smart_speed; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_82580_PHY_POWER_MGMT ;
 int E1000_82580_PM_D0_LPLU ;
 int E1000_82580_PM_SPD ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 scalar_t__ e1000_smart_speed_off ;
 scalar_t__ e1000_smart_speed_on ;

__attribute__((used)) static s32 e1000_set_d0_lplu_state_82580(struct e1000_hw *hw, bool active)
{
 struct e1000_phy_info *phy = &hw->phy;
 u32 data;

 DEBUGFUNC("e1000_set_d0_lplu_state_82580");

 data = E1000_READ_REG(hw, E1000_82580_PHY_POWER_MGMT);

 if (active) {
  data |= E1000_82580_PM_D0_LPLU;


  data &= ~E1000_82580_PM_SPD;
 } else {
  data &= ~E1000_82580_PM_D0_LPLU;







  if (phy->smart_speed == e1000_smart_speed_on)
   data |= E1000_82580_PM_SPD;
  else if (phy->smart_speed == e1000_smart_speed_off)
   data &= ~E1000_82580_PM_SPD;
 }

 E1000_WRITE_REG(hw, E1000_82580_PHY_POWER_MGMT, data);
 return E1000_SUCCESS;
}
