
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int ,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 scalar_t__ E1000_SUCCESS ;
 int M88E1000_PHY_GEN_CONTROL ;
 scalar_t__ stub1 (struct e1000_hw*,int ,int) ;
 scalar_t__ stub2 (struct e1000_hw*,int ,int) ;

s32 e1000_phy_reset_dsp_generic(struct e1000_hw *hw)
{
 s32 ret_val;

 DEBUGFUNC("e1000_phy_reset_dsp_generic");

 if (!hw->phy.ops.write_reg)
  return E1000_SUCCESS;

 ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_GEN_CONTROL, 0xC1);
 if (ret_val)
  return ret_val;

 return hw->phy.ops.write_reg(hw, M88E1000_PHY_GEN_CONTROL, 0);
}
