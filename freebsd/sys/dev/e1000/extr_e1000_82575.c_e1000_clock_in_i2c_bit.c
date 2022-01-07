
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_I2CPARAMS ;
 int E1000_I2C_T_HIGH ;
 int E1000_I2C_T_LOW ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int e1000_get_i2c_data (int *) ;
 int e1000_lower_i2c_clk (struct e1000_hw*,int *) ;
 int e1000_raise_i2c_clk (struct e1000_hw*,int *) ;
 int usec_delay (int ) ;

__attribute__((used)) static s32 e1000_clock_in_i2c_bit(struct e1000_hw *hw, bool *data)
{
 u32 i2cctl = E1000_READ_REG(hw, E1000_I2CPARAMS);

 DEBUGFUNC("e1000_clock_in_i2c_bit");

 e1000_raise_i2c_clk(hw, &i2cctl);


 usec_delay(E1000_I2C_T_HIGH);

 i2cctl = E1000_READ_REG(hw, E1000_I2CPARAMS);
 *data = e1000_get_i2c_data(&i2cctl);

 e1000_lower_i2c_clk(hw, &i2cctl);


 usec_delay(E1000_I2C_T_LOW);

 return E1000_SUCCESS;
}
