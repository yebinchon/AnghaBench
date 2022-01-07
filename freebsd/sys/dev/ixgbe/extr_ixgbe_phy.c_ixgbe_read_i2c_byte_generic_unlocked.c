
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int FALSE ;
 int ixgbe_read_i2c_byte_generic_int (struct ixgbe_hw*,int ,int ,int *,int ) ;

s32 ixgbe_read_i2c_byte_generic_unlocked(struct ixgbe_hw *hw, u8 byte_offset,
      u8 dev_addr, u8 *data)
{
 return ixgbe_read_i2c_byte_generic_int(hw, byte_offset, dev_addr,
            data, FALSE);
}
