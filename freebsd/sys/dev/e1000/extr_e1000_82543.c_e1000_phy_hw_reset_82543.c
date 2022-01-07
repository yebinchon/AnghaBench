
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int (* get_cfg_done ) (struct e1000_hw*) ;} ;
struct TYPE_3__ {TYPE_2__ ops; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_SDP4_DATA ;
 int E1000_CTRL_EXT_SDP4_DIR ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 int msec_delay (int) ;
 int stub1 (struct e1000_hw*) ;
 int usec_delay (int) ;

__attribute__((used)) static s32 e1000_phy_hw_reset_82543(struct e1000_hw *hw)
{
 u32 ctrl_ext;
 s32 ret_val;

 DEBUGFUNC("e1000_phy_hw_reset_82543");





 ctrl_ext = E1000_READ_REG(hw, E1000_CTRL_EXT);
 ctrl_ext |= E1000_CTRL_EXT_SDP4_DIR;
 ctrl_ext &= ~E1000_CTRL_EXT_SDP4_DATA;
 E1000_WRITE_REG(hw, E1000_CTRL_EXT, ctrl_ext);
 E1000_WRITE_FLUSH(hw);

 msec_delay(10);


 ctrl_ext |= E1000_CTRL_EXT_SDP4_DATA;
 E1000_WRITE_REG(hw, E1000_CTRL_EXT, ctrl_ext);
 E1000_WRITE_FLUSH(hw);

 usec_delay(150);

 if (!(hw->phy.ops.get_cfg_done))
  return E1000_SUCCESS;

 ret_val = hw->phy.ops.get_cfg_done(hw);

 return ret_val;
}
