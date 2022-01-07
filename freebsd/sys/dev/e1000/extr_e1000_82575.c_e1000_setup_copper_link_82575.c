
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {scalar_t__ (* reset ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {int type; int id; TYPE_2__ ops; } ;
struct TYPE_4__ {int type; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_82580_PHY_POWER_MGMT ;
 int E1000_82580_PM_GO_LINKD ;
 int E1000_CTRL ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_SLU ;
 scalar_t__ E1000_ERR_PHY ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;







 scalar_t__ e1000_copper_link_setup_82577 (struct e1000_hw*) ;
 scalar_t__ e1000_copper_link_setup_igp (struct e1000_hw*) ;
 scalar_t__ e1000_copper_link_setup_m88 (struct e1000_hw*) ;
 scalar_t__ e1000_copper_link_setup_m88_gen2 (struct e1000_hw*) ;







 scalar_t__ e1000_setup_copper_link_generic (struct e1000_hw*) ;
 scalar_t__ e1000_setup_serdes_link_82575 (struct e1000_hw*) ;
 scalar_t__ e1000_sgmii_active_82575 (struct e1000_hw*) ;
 int msec_delay (int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_setup_copper_link_82575(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val;
 u32 phpm_reg;

 DEBUGFUNC("e1000_setup_copper_link_82575");

 ctrl = E1000_READ_REG(hw, E1000_CTRL);
 ctrl |= E1000_CTRL_SLU;
 ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
 E1000_WRITE_REG(hw, E1000_CTRL, ctrl);


 switch (hw->mac.type) {
 case 135:
 case 132:
 case 134:
 case 133:
  phpm_reg = E1000_READ_REG(hw, E1000_82580_PHY_POWER_MGMT);
  phpm_reg &= ~E1000_82580_PM_GO_LINKD;
  E1000_WRITE_REG(hw, E1000_82580_PHY_POWER_MGMT, phpm_reg);
  break;
 default:
  break;
 }

 ret_val = e1000_setup_serdes_link_82575(hw);
 if (ret_val)
  goto out;

 if (e1000_sgmii_active_82575(hw)) {

  msec_delay(300);

  ret_val = hw->phy.ops.reset(hw);
  if (ret_val) {
   DEBUGOUT("Error resetting the PHY.\n");
   goto out;
  }
 }
 switch (hw->phy.type) {
 case 130:
 case 128:
  switch (hw->phy.id) {
  case 140:
  case 139:
  case 138:
  case 136:
  case 137:
  case 141:
   ret_val = e1000_copper_link_setup_m88_gen2(hw);
   break;
  default:
   ret_val = e1000_copper_link_setup_m88(hw);
   break;
  }
  break;
 case 129:
  ret_val = e1000_copper_link_setup_igp(hw);
  break;
 case 131:
  ret_val = e1000_copper_link_setup_82577(hw);
  break;
 default:
  ret_val = -E1000_ERR_PHY;
  break;
 }

 if (ret_val)
  goto out;

 ret_val = e1000_setup_copper_link_generic(hw);
out:
 return ret_val;
}
