
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int (* write_i2c_byte ) (struct ixgbe_hw*,int ,int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_I2C_EEPROM_DEV_ADDR ;
 int stub1 (struct ixgbe_hw*,int ,int ,int ) ;

s32 ixgbe_write_i2c_eeprom_generic(struct ixgbe_hw *hw, u8 byte_offset,
       u8 eeprom_data)
{
 DEBUGFUNC("ixgbe_write_i2c_eeprom_generic");

 return hw->phy.ops.write_i2c_byte(hw, byte_offset,
       IXGBE_I2C_EEPROM_DEV_ADDR,
       eeprom_data);
}
