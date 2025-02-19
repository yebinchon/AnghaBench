
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;


 int DEBUGFUNC (char*) ;
 int IXL_I2C_REG (struct i40e_hw*) ;
 int IXL_I2C_T_BUF ;
 int IXL_I2C_T_SU_STO ;
 int i40e_usec_delay (int ) ;
 int ixl_raise_i2c_clk (struct ixl_pf*,int *) ;
 int ixl_set_i2c_data (struct ixl_pf*,int *,int) ;
 int rd32 (struct i40e_hw*,int ) ;

__attribute__((used)) static void
ixl_i2c_stop(struct ixl_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 u32 i2cctl = rd32(hw, IXL_I2C_REG(hw));

 DEBUGFUNC("ixl_i2c_stop");


 ixl_set_i2c_data(pf, &i2cctl, 0);
 ixl_raise_i2c_clk(pf, &i2cctl);


 i40e_usec_delay(IXL_I2C_T_SU_STO);

 ixl_set_i2c_data(pf, &i2cctl, 1);


 i40e_usec_delay(IXL_I2C_T_BUF);
}
