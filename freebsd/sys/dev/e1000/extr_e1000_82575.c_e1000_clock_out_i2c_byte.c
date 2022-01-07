
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_I2CPARAMS ;
 int E1000_I2C_DATA_OE_N ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 int e1000_clock_out_i2c_bit (struct e1000_hw*,int) ;

__attribute__((used)) static s32 e1000_clock_out_i2c_byte(struct e1000_hw *hw, u8 data)
{
 s32 status = E1000_SUCCESS;
 s32 i;
 u32 i2cctl;
 bool bit = 0;

 DEBUGFUNC("e1000_clock_out_i2c_byte");

 for (i = 7; i >= 0; i--) {
  bit = (data >> i) & 0x1;
  status = e1000_clock_out_i2c_bit(hw, bit);

  if (status != E1000_SUCCESS)
   break;
 }


 i2cctl = E1000_READ_REG(hw, E1000_I2CPARAMS);

 i2cctl |= E1000_I2C_DATA_OE_N;
 E1000_WRITE_REG(hw, E1000_I2CPARAMS, i2cctl);
 E1000_WRITE_FLUSH(hw);

 return status;
}
