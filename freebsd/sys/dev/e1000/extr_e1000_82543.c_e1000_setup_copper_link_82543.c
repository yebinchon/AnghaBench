
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int (* config_collision_dist ) (struct e1000_hw*) ;} ;
struct TYPE_8__ {scalar_t__ type; TYPE_3__ ops; scalar_t__ autoneg; } ;
struct TYPE_5__ {scalar_t__ (* reset ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_4__ mac; TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int COPPER_LINK_UP_LIMIT ;
 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_SLU ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000_82543 ;
 scalar_t__ e1000_82544 ;
 scalar_t__ e1000_config_fc_after_link_up_generic (struct e1000_hw*) ;
 scalar_t__ e1000_config_mac_to_phy_82543 (struct e1000_hw*) ;
 scalar_t__ e1000_copper_link_autoneg (struct e1000_hw*) ;
 scalar_t__ e1000_copper_link_setup_m88 (struct e1000_hw*) ;
 scalar_t__ e1000_phy_force_speed_duplex_82543 (struct e1000_hw*) ;
 scalar_t__ e1000_phy_has_link_generic (struct e1000_hw*,int ,int,int*) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_setup_copper_link_82543(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val;
 bool link;

 DEBUGFUNC("e1000_setup_copper_link_82543");

 ctrl = E1000_READ_REG(hw, E1000_CTRL) | E1000_CTRL_SLU;






 if (hw->mac.type == e1000_82543) {
  ctrl |= (E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
  E1000_WRITE_REG(hw, E1000_CTRL, ctrl);
  ret_val = hw->phy.ops.reset(hw);
  if (ret_val)
   goto out;
 } else {
  ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
  E1000_WRITE_REG(hw, E1000_CTRL, ctrl);
 }


 ret_val = e1000_copper_link_setup_m88(hw);
 if (ret_val)
  goto out;

 if (hw->mac.autoneg) {




  ret_val = e1000_copper_link_autoneg(hw);
  if (ret_val)
   goto out;
 } else {




  DEBUGOUT("Forcing Speed and Duplex\n");
  ret_val = e1000_phy_force_speed_duplex_82543(hw);
  if (ret_val) {
   DEBUGOUT("Error Forcing Speed and Duplex\n");
   goto out;
  }
 }





 ret_val = e1000_phy_has_link_generic(hw, COPPER_LINK_UP_LIMIT, 10,
          &link);
 if (ret_val)
  goto out;


 if (link) {
  DEBUGOUT("Valid link established!!!\n");

  if (hw->mac.type == e1000_82544) {
   hw->mac.ops.config_collision_dist(hw);
  } else {
   ret_val = e1000_config_mac_to_phy_82543(hw);
   if (ret_val)
    goto out;
  }
  ret_val = e1000_config_fc_after_link_up_generic(hw);
 } else {
  DEBUGOUT("Unable to establish link!!!\n");
 }

out:
 return ret_val;
}
