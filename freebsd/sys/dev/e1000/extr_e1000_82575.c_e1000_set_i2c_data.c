
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int DEBUGOUT1 (char*,int) ;
 int E1000_ERR_I2C ;
 int E1000_I2CPARAMS ;
 int E1000_I2C_CLK_OE_N ;
 int E1000_I2C_DATA_OE_N ;
 int E1000_I2C_DATA_OUT ;
 scalar_t__ E1000_I2C_T_FALL ;
 scalar_t__ E1000_I2C_T_RISE ;
 scalar_t__ E1000_I2C_T_SU_DATA ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_SUCCESS ;
 int E1000_WRITE_FLUSH (struct e1000_hw*) ;
 int E1000_WRITE_REG (struct e1000_hw*,int ,int ) ;
 int e1000_get_i2c_data (int *) ;
 int usec_delay (scalar_t__) ;

__attribute__((used)) static s32 e1000_set_i2c_data(struct e1000_hw *hw, u32 *i2cctl, bool data)
{
 s32 status = E1000_SUCCESS;

 DEBUGFUNC("e1000_set_i2c_data");

 if (data)
  *i2cctl |= E1000_I2C_DATA_OUT;
 else
  *i2cctl &= ~E1000_I2C_DATA_OUT;

 *i2cctl &= ~E1000_I2C_DATA_OE_N;
 *i2cctl |= E1000_I2C_CLK_OE_N;
 E1000_WRITE_REG(hw, E1000_I2CPARAMS, *i2cctl);
 E1000_WRITE_FLUSH(hw);


 usec_delay(E1000_I2C_T_RISE + E1000_I2C_T_FALL + E1000_I2C_T_SU_DATA);

 *i2cctl = E1000_READ_REG(hw, E1000_I2CPARAMS);
 if (data != e1000_get_i2c_data(i2cctl)) {
  status = E1000_ERR_I2C;
  DEBUGOUT1("Error - I2C data was not set to %X.\n", data);
 }

 return status;
}
