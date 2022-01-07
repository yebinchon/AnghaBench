
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int write_i2c_eeprom; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef int s32 ;


 int IXGBE_NOT_IMPLEMENTED ;
 int ixgbe_call_func (struct ixgbe_hw*,int ,struct ixgbe_hw*,int ) ;

s32 ixgbe_write_i2c_eeprom(struct ixgbe_hw *hw,
      u8 byte_offset, u8 eeprom_data)
{
 return ixgbe_call_func(hw, hw->phy.ops.write_i2c_eeprom,
          (hw, byte_offset, eeprom_data),
          IXGBE_NOT_IMPLEMENTED);
}
