
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_I2CPARAMS ;
 int E1000_I2C_T_BUF ;
 int E1000_I2C_T_SU_STO ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int e1000_raise_i2c_clk (struct e1000_hw*,int *) ;
 int e1000_set_i2c_data (struct e1000_hw*,int *,int) ;
 int usec_delay (int ) ;

__attribute__((used)) static void e1000_i2c_stop(struct e1000_hw *hw)
{
 u32 i2cctl = E1000_READ_REG(hw, E1000_I2CPARAMS);

 DEBUGFUNC("e1000_i2c_stop");


 e1000_set_i2c_data(hw, &i2cctl, 0);
 e1000_raise_i2c_clk(hw, &i2cctl);


 usec_delay(E1000_I2C_T_SU_STO);

 e1000_set_i2c_data(hw, &i2cctl, 1);


 usec_delay(E1000_I2C_T_BUF);
}
