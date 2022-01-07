
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int read_buffer; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ eeprom; } ;
typedef int s32 ;


 int IXGBE_NOT_IMPLEMENTED ;
 int ixgbe_call_func (struct ixgbe_hw*,int ,struct ixgbe_hw*,int ) ;

s32 ixgbe_read_eeprom_buffer(struct ixgbe_hw *hw, u16 offset,
        u16 words, u16 *data)
{
 return ixgbe_call_func(hw, hw->eeprom.ops.read_buffer,
          (hw, offset, words, data),
          IXGBE_NOT_IMPLEMENTED);
}
