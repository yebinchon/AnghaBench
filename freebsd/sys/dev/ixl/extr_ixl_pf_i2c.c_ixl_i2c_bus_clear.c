
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;


 int DEBUGFUNC (char*) ;
 int IXL_I2C_REG (struct i40e_hw*) ;
 int IXL_I2C_T_HIGH ;
 int IXL_I2C_T_LOW ;
 int i40e_usec_delay (int ) ;
 int ixl_i2c_start (struct ixl_pf*) ;
 int ixl_i2c_stop (struct ixl_pf*) ;
 int ixl_lower_i2c_clk (struct ixl_pf*,int*) ;
 int ixl_raise_i2c_clk (struct ixl_pf*,int*) ;
 int ixl_set_i2c_data (struct ixl_pf*,int*,int) ;
 int rd32 (struct i40e_hw*,int ) ;

__attribute__((used)) static void
ixl_i2c_bus_clear(struct ixl_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 u32 i2cctl = rd32(hw, IXL_I2C_REG(hw));
 u32 i;

 DEBUGFUNC("ixl_i2c_bus_clear");

 ixl_i2c_start(pf);

 ixl_set_i2c_data(pf, &i2cctl, 1);

 for (i = 0; i < 9; i++) {
  ixl_raise_i2c_clk(pf, &i2cctl);


  i40e_usec_delay(IXL_I2C_T_HIGH);

  ixl_lower_i2c_clk(pf, &i2cctl);


  i40e_usec_delay(IXL_I2C_T_LOW);
 }

 ixl_i2c_start(pf);


 ixl_i2c_stop(pf);
}
