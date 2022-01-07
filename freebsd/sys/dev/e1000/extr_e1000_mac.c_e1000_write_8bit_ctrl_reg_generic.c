
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT1 (char*,scalar_t__) ;
 int E1000_ERR_PHY ;
 scalar_t__ E1000_GEN_CTL_ADDRESS_SHIFT ;
 scalar_t__ E1000_GEN_CTL_READY ;
 scalar_t__ E1000_GEN_POLL_TIMEOUT ;
 scalar_t__ E1000_READ_REG (struct e1000_hw*,scalar_t__) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,scalar_t__,scalar_t__) ;
 int usec_delay (int) ;

s32 e1000_write_8bit_ctrl_reg_generic(struct e1000_hw *hw, u32 reg,
          u32 offset, u8 data)
{
 u32 i, regvalue = 0;

 DEBUGFUNC("e1000_write_8bit_ctrl_reg_generic");


 regvalue = ((u32)data) | (offset << E1000_GEN_CTL_ADDRESS_SHIFT);
 E1000_WRITE_REG(hw, reg, regvalue);


 for (i = 0; i < E1000_GEN_POLL_TIMEOUT; i++) {
  usec_delay(5);
  regvalue = E1000_READ_REG(hw, reg);
  if (regvalue & E1000_GEN_CTL_READY)
   break;
 }
 if (!(regvalue & E1000_GEN_CTL_READY)) {
  DEBUGOUT1("Reg %08x did not indicate ready\n", reg);
  return -E1000_ERR_PHY;
 }

 return E1000_SUCCESS;
}
