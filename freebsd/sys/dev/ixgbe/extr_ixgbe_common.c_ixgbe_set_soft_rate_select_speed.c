
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ (* write_i2c_byte ) (struct ixgbe_hw*,int ,int ,int) ;scalar_t__ (* read_i2c_byte ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;
typedef int ixgbe_link_speed ;


 int DEBUGOUT (char*) ;
 int IXGBE_I2C_EEPROM_DEV_ADDR2 ;


 int IXGBE_SFF_SFF_8472_ESCB ;
 int IXGBE_SFF_SFF_8472_OSCB ;
 int IXGBE_SFF_SOFT_RS_SELECT_10G ;
 int IXGBE_SFF_SOFT_RS_SELECT_1G ;
 int IXGBE_SFF_SOFT_RS_SELECT_MASK ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int ,int) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub4 (struct ixgbe_hw*,int ,int ,int) ;

void ixgbe_set_soft_rate_select_speed(struct ixgbe_hw *hw,
     ixgbe_link_speed speed)
{
 s32 status;
 u8 rs, eeprom_data;

 switch (speed) {
 case 129:

  rs = IXGBE_SFF_SOFT_RS_SELECT_10G;
  break;
 case 128:
  rs = IXGBE_SFF_SOFT_RS_SELECT_1G;
  break;
 default:
  DEBUGOUT("Invalid fixed module speed\n");
  return;
 }


 status = hw->phy.ops.read_i2c_byte(hw, IXGBE_SFF_SFF_8472_OSCB,
        IXGBE_I2C_EEPROM_DEV_ADDR2,
        &eeprom_data);
 if (status) {
  DEBUGOUT("Failed to read Rx Rate Select RS0\n");
  goto out;
 }

 eeprom_data = (eeprom_data & ~IXGBE_SFF_SOFT_RS_SELECT_MASK) | rs;

 status = hw->phy.ops.write_i2c_byte(hw, IXGBE_SFF_SFF_8472_OSCB,
         IXGBE_I2C_EEPROM_DEV_ADDR2,
         eeprom_data);
 if (status) {
  DEBUGOUT("Failed to write Rx Rate Select RS0\n");
  goto out;
 }


 status = hw->phy.ops.read_i2c_byte(hw, IXGBE_SFF_SFF_8472_ESCB,
        IXGBE_I2C_EEPROM_DEV_ADDR2,
        &eeprom_data);
 if (status) {
  DEBUGOUT("Failed to read Rx Rate Select RS1\n");
  goto out;
 }

 eeprom_data = (eeprom_data & ~IXGBE_SFF_SOFT_RS_SELECT_MASK) | rs;

 status = hw->phy.ops.write_i2c_byte(hw, IXGBE_SFF_SFF_8472_ESCB,
         IXGBE_I2C_EEPROM_DEV_ADDR2,
         eeprom_data);
 if (status) {
  DEBUGOUT("Failed to write Rx Rate Select RS1\n");
  goto out;
 }
out:
 return;
}
