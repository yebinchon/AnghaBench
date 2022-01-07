
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_I2CCTL_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_I2C_DATA_OE_N_EN_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_I2C_DATA_OUT_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SUCCESS ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int ixgbe_clock_out_i2c_bit (struct ixgbe_hw*,int) ;

__attribute__((used)) static s32 ixgbe_clock_out_i2c_byte(struct ixgbe_hw *hw, u8 data)
{
 s32 status = IXGBE_SUCCESS;
 s32 i;
 u32 i2cctl;
 bool bit;

 DEBUGFUNC("ixgbe_clock_out_i2c_byte");

 for (i = 7; i >= 0; i--) {
  bit = (data >> i) & 0x1;
  status = ixgbe_clock_out_i2c_bit(hw, bit);

  if (status != IXGBE_SUCCESS)
   break;
 }


 i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL_BY_MAC(hw));
 i2cctl |= IXGBE_I2C_DATA_OUT_BY_MAC(hw);
 i2cctl |= IXGBE_I2C_DATA_OE_N_EN_BY_MAC(hw);
 IXGBE_WRITE_REG(hw, IXGBE_I2CCTL_BY_MAC(hw), i2cctl);
 IXGBE_WRITE_FLUSH(hw);

 return status;
}
