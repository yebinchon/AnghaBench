
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int ) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int ,int *) ;scalar_t__ (* reset ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {scalar_t__ type; int mdix; TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int I82577_CFG_ASSERT_CRS_ON_TX ;
 int I82577_CFG_ENABLE_DOWNSHIFT ;
 int I82577_CFG_REG ;
 int I82577_PHY_CTRL2_AUTO_MDI_MDIX ;
 int I82577_PHY_CTRL2_MANUAL_MDIX ;
 int I82577_PHY_CTRL2_MDIX_CFG_MASK ;
 int I82577_PHY_CTRL_2 ;
 scalar_t__ e1000_phy_82580 ;
 scalar_t__ e1000_set_master_slave_mode (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub3 (struct e1000_hw*,int ,int ) ;
 scalar_t__ stub4 (struct e1000_hw*,int ,int *) ;
 scalar_t__ stub5 (struct e1000_hw*,int ,int ) ;

s32 e1000_copper_link_setup_82577(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 phy_data;

 DEBUGFUNC("e1000_copper_link_setup_82577");

 if (hw->phy.type == e1000_phy_82580) {
  ret_val = hw->phy.ops.reset(hw);
  if (ret_val) {
   DEBUGOUT("Error resetting the PHY.\n");
   return ret_val;
  }
 }


 ret_val = hw->phy.ops.read_reg(hw, I82577_CFG_REG, &phy_data);
 if (ret_val)
  return ret_val;

 phy_data |= I82577_CFG_ASSERT_CRS_ON_TX;


 phy_data |= I82577_CFG_ENABLE_DOWNSHIFT;

 ret_val = hw->phy.ops.write_reg(hw, I82577_CFG_REG, phy_data);
 if (ret_val)
  return ret_val;


 ret_val = hw->phy.ops.read_reg(hw, I82577_PHY_CTRL_2, &phy_data);
 if (ret_val)
  return ret_val;
 phy_data &= ~I82577_PHY_CTRL2_MDIX_CFG_MASK;





 switch (hw->phy.mdix) {
 case 1:
  break;
 case 2:
  phy_data |= I82577_PHY_CTRL2_MANUAL_MDIX;
  break;
 case 0:
 default:
  phy_data |= I82577_PHY_CTRL2_AUTO_MDI_MDIX;
  break;
 }
 ret_val = hw->phy.ops.write_reg(hw, I82577_PHY_CTRL_2, phy_data);
 if (ret_val)
  return ret_val;

 return e1000_set_master_slave_mode(hw);
}
