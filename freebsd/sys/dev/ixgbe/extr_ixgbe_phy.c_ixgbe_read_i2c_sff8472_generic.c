
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int (* read_i2c_byte ) (struct ixgbe_hw*,int ,int ,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 int IXGBE_I2C_EEPROM_DEV_ADDR2 ;
 int stub1 (struct ixgbe_hw*,int ,int ,int *) ;

__attribute__((used)) static s32 ixgbe_read_i2c_sff8472_generic(struct ixgbe_hw *hw, u8 byte_offset,
       u8 *sff8472_data)
{
 return hw->phy.ops.read_i2c_byte(hw, byte_offset,
      IXGBE_I2C_EEPROM_DEV_ADDR2,
      sff8472_data);
}
