
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int e1000_write_8bit_ctrl_reg_generic (struct e1000_hw*,int ,int ,int ) ;

s32 e1000_write_8bit_ctrl_reg(struct e1000_hw *hw, u32 reg, u32 offset,
         u8 data)
{
 return e1000_write_8bit_ctrl_reg_generic(hw, reg, offset, data);
}
