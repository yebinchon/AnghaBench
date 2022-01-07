
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT1 (char*,int) ;
 scalar_t__ E1000_ERR_I2C ;
 int E1000_I2CPARAMS ;
 int E1000_I2C_T_HIGH ;
 int E1000_I2C_T_LOW ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 scalar_t__ E1000_SUCCESS ;
 int e1000_lower_i2c_clk (struct e1000_hw*,int *) ;
 int e1000_raise_i2c_clk (struct e1000_hw*,int *) ;
 scalar_t__ e1000_set_i2c_data (struct e1000_hw*,int *,int) ;
 int usec_delay (int ) ;

__attribute__((used)) static s32 e1000_clock_out_i2c_bit(struct e1000_hw *hw, bool data)
{
 s32 status;
 u32 i2cctl = E1000_READ_REG(hw, E1000_I2CPARAMS);

 DEBUGFUNC("e1000_clock_out_i2c_bit");

 status = e1000_set_i2c_data(hw, &i2cctl, data);
 if (status == E1000_SUCCESS) {
  e1000_raise_i2c_clk(hw, &i2cctl);


  usec_delay(E1000_I2C_T_HIGH);

  e1000_lower_i2c_clk(hw, &i2cctl);




  usec_delay(E1000_I2C_T_LOW);
 } else {
  status = E1000_ERR_I2C;
  DEBUGOUT1("I2C data was not set to %X\n", data);
 }

 return status;
}
