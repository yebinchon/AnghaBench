
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct e1000_phy_info {scalar_t__ addr; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int E1000_ERR_PHY ;
 int E1000_I2CCMD ;
 scalar_t__ E1000_I2CCMD_ERROR ;
 scalar_t__ E1000_I2CCMD_OPCODE_READ ;
 scalar_t__ E1000_I2CCMD_PHY_ADDR_SHIFT ;
 scalar_t__ E1000_I2CCMD_PHY_TIMEOUT ;
 scalar_t__ E1000_I2CCMD_READY ;
 scalar_t__ E1000_I2CCMD_REG_ADDR_SHIFT ;
 scalar_t__ E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,scalar_t__) ;
 int usec_delay (int) ;

s32 e1000_read_phy_reg_i2c(struct e1000_hw *hw, u32 offset, u16 *data)
{
 struct e1000_phy_info *phy = &hw->phy;
 u32 i, i2ccmd = 0;

 DEBUGFUNC("e1000_read_phy_reg_i2c");





 i2ccmd = ((offset << E1000_I2CCMD_REG_ADDR_SHIFT) |
    (phy->addr << E1000_I2CCMD_PHY_ADDR_SHIFT) |
    (E1000_I2CCMD_OPCODE_READ));

 E1000_WRITE_REG(hw, E1000_I2CCMD, i2ccmd);


 for (i = 0; i < E1000_I2CCMD_PHY_TIMEOUT; i++) {
  usec_delay(50);
  i2ccmd = E1000_READ_REG(hw, E1000_I2CCMD);
  if (i2ccmd & E1000_I2CCMD_READY)
   break;
 }
 if (!(i2ccmd & E1000_I2CCMD_READY)) {
  DEBUGOUT("I2CCMD Read did not complete\n");
  return -E1000_ERR_PHY;
 }
 if (i2ccmd & E1000_I2CCMD_ERROR) {
  DEBUGOUT("I2CCMD Error bit set\n");
  return -E1000_ERR_PHY;
 }


 *data = ((i2ccmd >> 8) & 0x00FF) | ((i2ccmd << 8) & 0xFF00);

 return E1000_SUCCESS;
}
