
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;


 int I40E_GLGEN_I2CPARAMS_CLK_MASK ;
 int I40E_GLGEN_I2CPARAMS_CLK_OE_N_MASK ;
 int IXL_I2C_REG (struct i40e_hw*) ;
 int IXL_I2C_T_FALL ;
 int i40e_usec_delay (int ) ;
 int ixl_flush (struct i40e_hw*) ;
 int wr32 (struct i40e_hw*,int ,int ) ;

__attribute__((used)) static void
ixl_lower_i2c_clk(struct ixl_pf *pf, u32 *i2cctl)
{
 struct i40e_hw *hw = &pf->hw;

 *i2cctl &= ~(I40E_GLGEN_I2CPARAMS_CLK_MASK);
 *i2cctl &= ~(I40E_GLGEN_I2CPARAMS_CLK_OE_N_MASK);

 wr32(hw, IXL_I2C_REG(hw), *i2cctl);
 ixl_flush(hw);


 i40e_usec_delay(IXL_I2C_T_FALL);
}
