
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* config_collision_dist ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; scalar_t__ autoneg; } ;
struct TYPE_7__ {scalar_t__ (* force_speed_duplex ) (struct e1000_hw*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct e1000_hw {TYPE_2__ mac; TYPE_4__ phy; } ;
typedef scalar_t__ s32 ;


 int COPPER_LINK_UP_LIMIT ;
 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ e1000_config_fc_after_link_up_generic (struct e1000_hw*) ;
 scalar_t__ e1000_copper_link_autoneg (struct e1000_hw*) ;
 scalar_t__ e1000_phy_has_link_generic (struct e1000_hw*,int ,int,int*) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

s32 e1000_setup_copper_link_generic(struct e1000_hw *hw)
{
 s32 ret_val;
 bool link;

 DEBUGFUNC("e1000_setup_copper_link_generic");

 if (hw->mac.autoneg) {



  ret_val = e1000_copper_link_autoneg(hw);
  if (ret_val)
   return ret_val;
 } else {



  DEBUGOUT("Forcing Speed and Duplex\n");
  ret_val = hw->phy.ops.force_speed_duplex(hw);
  if (ret_val) {
   DEBUGOUT("Error Forcing Speed and Duplex\n");
   return ret_val;
  }
 }




 ret_val = e1000_phy_has_link_generic(hw, COPPER_LINK_UP_LIMIT, 10,
          &link);
 if (ret_val)
  return ret_val;

 if (link) {
  DEBUGOUT("Valid link established!!!\n");
  hw->mac.ops.config_collision_dist(hw);
  ret_val = e1000_config_fc_after_link_up_generic(hw);
 } else {
  DEBUGOUT("Unable to establish link!!!\n");
 }

 return ret_val;
}
