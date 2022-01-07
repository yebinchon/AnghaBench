
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_I2C_ENA ;
 int E1000_I2CBB_EN ;
 int E1000_I2CPARAMS ;
 int E1000_I2C_CLK_OE_N ;
 int E1000_I2C_DATA_OE_N ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;

s32 e1000_set_i2c_bb(struct e1000_hw *hw)
{
 s32 ret_val = E1000_SUCCESS;
 u32 ctrl_ext, i2cparams;

 DEBUGFUNC("e1000_set_i2c_bb");

 ctrl_ext = E1000_READ_REG(hw, E1000_CTRL_EXT);
 ctrl_ext |= E1000_CTRL_I2C_ENA;
 E1000_WRITE_REG(hw, E1000_CTRL_EXT, ctrl_ext);
 E1000_WRITE_FLUSH(hw);

 i2cparams = E1000_READ_REG(hw, E1000_I2CPARAMS);
 i2cparams |= E1000_I2CBB_EN;
 i2cparams |= E1000_I2C_DATA_OE_N;
 i2cparams |= E1000_I2C_CLK_OE_N;
 E1000_WRITE_REG(hw, E1000_I2CPARAMS, i2cparams);
 E1000_WRITE_FLUSH(hw);

 return ret_val;
}
