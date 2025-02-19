
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ media_type; } ;
struct TYPE_5__ {int (* config_collision_dist ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct e1000_hw {TYPE_1__ phy; TYPE_3__ mac; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_LRST ;
 int E1000_CTRL_SWDPIN1 ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000_commit_fc_settings_generic (struct e1000_hw*) ;
 scalar_t__ e1000_media_type_internal_serdes ;
 scalar_t__ e1000_poll_fiber_serdes_link_generic (struct e1000_hw*) ;
 int msec_delay (int) ;
 int stub1 (struct e1000_hw*) ;

s32 e1000_setup_fiber_serdes_link_generic(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val;

 DEBUGFUNC("e1000_setup_fiber_serdes_link_generic");

 ctrl = E1000_READ_REG(hw, E1000_CTRL);


 ctrl &= ~E1000_CTRL_LRST;

 hw->mac.ops.config_collision_dist(hw);

 ret_val = e1000_commit_fc_settings_generic(hw);
 if (ret_val)
  return ret_val;







 DEBUGOUT("Auto-negotiation enabled\n");

 E1000_WRITE_REG(hw, E1000_CTRL, ctrl);
 E1000_WRITE_FLUSH(hw);
 msec_delay(1);





 if (hw->phy.media_type == e1000_media_type_internal_serdes ||
     (E1000_READ_REG(hw, E1000_CTRL) & E1000_CTRL_SWDPIN1)) {
  ret_val = e1000_poll_fiber_serdes_link_generic(hw);
 } else {
  DEBUGOUT("No signal detected\n");
 }

 return ret_val;
}
