
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_phy_info {int addr; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int E1000_ERR_CONFIG ;
 int E1000_ERR_PHY ;
 int E1000_I2CCMD ;
 int E1000_I2CCMD_ERROR ;
 int E1000_I2CCMD_OPCODE_WRITE ;
 int E1000_I2CCMD_PHY_ADDR_SHIFT ;
 int E1000_I2CCMD_PHY_TIMEOUT ;
 int E1000_I2CCMD_READY ;
 int E1000_I2CCMD_REG_ADDR_SHIFT ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int) ;
 int usec_delay (int) ;

s32 e1000_write_phy_reg_i2c(struct e1000_hw *hw, u32 offset, u16 data)
{
 struct e1000_phy_info *phy = &hw->phy;
 u32 i, i2ccmd = 0;
 u16 phy_data_swapped;

 DEBUGFUNC("e1000_write_phy_reg_i2c");


 if ((hw->phy.addr == 0) || (hw->phy.addr > 7)) {
  DEBUGOUT1("PHY I2C Address %d is out of range.\n",
     hw->phy.addr);
  return -E1000_ERR_CONFIG;
 }


 phy_data_swapped = ((data >> 8) & 0x00FF) | ((data << 8) & 0xFF00);





 i2ccmd = ((offset << E1000_I2CCMD_REG_ADDR_SHIFT) |
    (phy->addr << E1000_I2CCMD_PHY_ADDR_SHIFT) |
    E1000_I2CCMD_OPCODE_WRITE |
    phy_data_swapped);

 E1000_WRITE_REG(hw, E1000_I2CCMD, i2ccmd);


 for (i = 0; i < E1000_I2CCMD_PHY_TIMEOUT; i++) {
  usec_delay(50);
  i2ccmd = E1000_READ_REG(hw, E1000_I2CCMD);
  if (i2ccmd & E1000_I2CCMD_READY)
   break;
 }
 if (!(i2ccmd & E1000_I2CCMD_READY)) {
  DEBUGOUT("I2CCMD Write did not complete\n");
  return -E1000_ERR_PHY;
 }
 if (i2ccmd & E1000_I2CCMD_ERROR) {
  DEBUGOUT("I2CCMD Error bit set\n");
  return -E1000_ERR_PHY;
 }

 return E1000_SUCCESS;
}
