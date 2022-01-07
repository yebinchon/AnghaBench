
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_ERR_PHY ;
 int E1000_I2CCMD ;
 scalar_t__ E1000_I2CCMD_ERROR ;
 scalar_t__ E1000_I2CCMD_OPCODE_READ ;
 scalar_t__ E1000_I2CCMD_PHY_TIMEOUT ;
 scalar_t__ E1000_I2CCMD_READY ;
 scalar_t__ E1000_I2CCMD_REG_ADDR_SHIFT ;
 scalar_t__ E1000_I2CCMD_SFP_DIAG_ADDR (int) ;
 scalar_t__ E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,scalar_t__) ;
 int usec_delay (int) ;

s32 e1000_read_sfp_data_byte(struct e1000_hw *hw, u16 offset, u8 *data)
{
 u32 i = 0;
 u32 i2ccmd = 0;
 u32 data_local = 0;

 DEBUGFUNC("e1000_read_sfp_data_byte");

 if (offset > E1000_I2CCMD_SFP_DIAG_ADDR(255)) {
  DEBUGOUT("I2CCMD command address exceeds upper limit\n");
  return -E1000_ERR_PHY;
 }





 i2ccmd = ((offset << E1000_I2CCMD_REG_ADDR_SHIFT) |
    E1000_I2CCMD_OPCODE_READ);

 E1000_WRITE_REG(hw, E1000_I2CCMD, i2ccmd);


 for (i = 0; i < E1000_I2CCMD_PHY_TIMEOUT; i++) {
  usec_delay(50);
  data_local = E1000_READ_REG(hw, E1000_I2CCMD);
  if (data_local & E1000_I2CCMD_READY)
   break;
 }
 if (!(data_local & E1000_I2CCMD_READY)) {
  DEBUGOUT("I2CCMD Read did not complete\n");
  return -E1000_ERR_PHY;
 }
 if (data_local & E1000_I2CCMD_ERROR) {
  DEBUGOUT("I2CCMD Error bit set\n");
  return -E1000_ERR_PHY;
 }
 *data = (u8) data_local & 0xFF;

 return E1000_SUCCESS;
}
