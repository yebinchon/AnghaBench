
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ (* get_cfg_done ) (struct e1000_hw*) ;int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;scalar_t__ (* check_reset_block ) (struct e1000_hw*) ;} ;
struct e1000_phy_info {int reset_delay_us; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_CTRL ;
 int E1000_CTRL_PHY_RST ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 scalar_t__ stub2 (struct e1000_hw*) ;
 int stub3 (struct e1000_hw*) ;
 scalar_t__ stub4 (struct e1000_hw*) ;
 int usec_delay (int) ;

s32 e1000_phy_hw_reset_generic(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u32 ctrl;

 DEBUGFUNC("e1000_phy_hw_reset_generic");

 if (phy->ops.check_reset_block) {
  ret_val = phy->ops.check_reset_block(hw);
  if (ret_val)
   return E1000_SUCCESS;
 }

 ret_val = phy->ops.acquire(hw);
 if (ret_val)
  return ret_val;

 ctrl = E1000_READ_REG(hw, E1000_CTRL);
 E1000_WRITE_REG(hw, E1000_CTRL, ctrl | E1000_CTRL_PHY_RST);
 E1000_WRITE_FLUSH(hw);

 usec_delay(phy->reset_delay_us);

 E1000_WRITE_REG(hw, E1000_CTRL, ctrl);
 E1000_WRITE_FLUSH(hw);

 usec_delay(150);

 phy->ops.release(hw);

 return phy->ops.get_cfg_done(hw);
}
