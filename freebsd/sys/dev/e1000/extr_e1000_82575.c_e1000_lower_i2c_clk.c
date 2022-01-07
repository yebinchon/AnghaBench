
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_I2CPARAMS ;
 int E1000_I2C_CLK_OE_N ;
 int E1000_I2C_CLK_OUT ;
 int E1000_I2C_T_FALL ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 int usec_delay (int ) ;

__attribute__((used)) static void e1000_lower_i2c_clk(struct e1000_hw *hw, u32 *i2cctl)
{

 DEBUGFUNC("e1000_lower_i2c_clk");

 *i2cctl &= ~E1000_I2C_CLK_OUT;
 *i2cctl &= ~E1000_I2C_CLK_OE_N;
 E1000_WRITE_REG(hw, E1000_I2CPARAMS, *i2cctl);
 E1000_WRITE_FLUSH(hw);


 usec_delay(E1000_I2C_T_FALL);
}
