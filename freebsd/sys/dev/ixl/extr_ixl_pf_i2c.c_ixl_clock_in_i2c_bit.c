
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK ;
 int I40E_SUCCESS ;
 int IXL_I2C_REG (struct i40e_hw*) ;
 int IXL_I2C_T_HIGH ;
 int IXL_I2C_T_LOW ;
 int i40e_usec_delay (int ) ;
 int ixl_flush (struct i40e_hw*) ;
 int ixl_get_i2c_data (struct ixl_pf*,int *) ;
 int ixl_lower_i2c_clk (struct ixl_pf*,int *) ;
 int ixl_raise_i2c_clk (struct ixl_pf*,int *) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static s32
ixl_clock_in_i2c_bit(struct ixl_pf *pf, bool *data)
{
 struct i40e_hw *hw = &pf->hw;
 u32 i2cctl = rd32(hw, IXL_I2C_REG(hw));

 DEBUGFUNC("ixl_clock_in_i2c_bit");

 ixl_raise_i2c_clk(pf, &i2cctl);


 i40e_usec_delay(IXL_I2C_T_HIGH);

 i2cctl = rd32(hw, IXL_I2C_REG(hw));
 i2cctl |= I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK;
 wr32(hw, IXL_I2C_REG(hw), i2cctl);
 ixl_flush(hw);

 i2cctl = rd32(hw, IXL_I2C_REG(hw));
 *data = ixl_get_i2c_data(pf, &i2cctl);

 ixl_lower_i2c_clk(pf, &i2cctl);


 i40e_usec_delay(IXL_I2C_T_LOW);

 return I40E_SUCCESS;
}
