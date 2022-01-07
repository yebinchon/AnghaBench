
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ ixgbe_clock_out_i2c_byte (struct ixgbe_hw*,int ) ;
 scalar_t__ ixgbe_get_i2c_ack (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_out_i2c_byte_ack(struct ixgbe_hw *hw, u8 byte)
{
 s32 status;

 status = ixgbe_clock_out_i2c_byte(hw, byte);
 if (status)
  return status;
 return ixgbe_get_i2c_ack(hw);
}
