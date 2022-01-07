
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_FEXTNVM4 ;
 int E1000_FEXTNVM4_BEACON_DURATION_16USEC ;
 int E1000_FEXTNVM4_BEACON_DURATION_MASK ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 int HV_M_STATUS ;
 int HV_M_STATUS_AUTONEG_COMPLETE ;
 int HV_M_STATUS_LINK_UP ;
 int HV_M_STATUS_SPEED_100 ;
 int HV_M_STATUS_SPEED_1000 ;
 int HV_PM_CTRL ;
 int HV_PM_CTRL_K1_ENABLE ;
 scalar_t__ e1000_pch2lan ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int*) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int) ;

__attribute__((used)) static s32 e1000_k1_workaround_lv(struct e1000_hw *hw)
{
 s32 ret_val = E1000_SUCCESS;
 u16 status_reg = 0;

 DEBUGFUNC("e1000_k1_workaround_lv");

 if (hw->mac.type != e1000_pch2lan)
  return E1000_SUCCESS;


 ret_val = hw->phy.ops.read_reg(hw, HV_M_STATUS, &status_reg);
 if (ret_val)
  return ret_val;

 if ((status_reg & (HV_M_STATUS_LINK_UP | HV_M_STATUS_AUTONEG_COMPLETE))
     == (HV_M_STATUS_LINK_UP | HV_M_STATUS_AUTONEG_COMPLETE)) {
  if (status_reg &
      (HV_M_STATUS_SPEED_1000 | HV_M_STATUS_SPEED_100)) {
   u16 pm_phy_reg;


   ret_val = hw->phy.ops.read_reg(hw, HV_PM_CTRL,
             &pm_phy_reg);
   if (ret_val)
    return ret_val;
   pm_phy_reg &= ~HV_PM_CTRL_K1_ENABLE;
   ret_val = hw->phy.ops.write_reg(hw, HV_PM_CTRL,
       pm_phy_reg);
   if (ret_val)
    return ret_val;
  } else {
   u32 mac_reg;
   mac_reg = E1000_READ_REG(hw, E1000_FEXTNVM4);
   mac_reg &= ~E1000_FEXTNVM4_BEACON_DURATION_MASK;
   mac_reg |= E1000_FEXTNVM4_BEACON_DURATION_16USEC;
   E1000_WRITE_REG(hw, E1000_FEXTNVM4, mac_reg);
  }
 }

 return ret_val;
}
