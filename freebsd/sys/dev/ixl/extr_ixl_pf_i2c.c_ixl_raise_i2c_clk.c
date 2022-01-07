
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;


 scalar_t__ I40E_GLGEN_I2CPARAMS_CLK_IN_MASK ;
 scalar_t__ I40E_GLGEN_I2CPARAMS_CLK_MASK ;
 scalar_t__ I40E_GLGEN_I2CPARAMS_CLK_OE_N_MASK ;
 scalar_t__ IXL_I2C_CLOCK_STRETCHING_TIMEOUT ;
 int IXL_I2C_REG (struct i40e_hw*) ;
 int IXL_I2C_T_RISE ;
 int i40e_usec_delay (int ) ;
 int ixl_flush (struct i40e_hw*) ;
 scalar_t__ rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,scalar_t__) ;

__attribute__((used)) static void
ixl_raise_i2c_clk(struct ixl_pf *pf, u32 *i2cctl)
{
 struct i40e_hw *hw = &pf->hw;
 u32 i = 0;
 u32 timeout = IXL_I2C_CLOCK_STRETCHING_TIMEOUT;
 u32 i2cctl_r = 0;

 for (i = 0; i < timeout; i++) {
  *i2cctl |= I40E_GLGEN_I2CPARAMS_CLK_MASK;
  *i2cctl &= ~(I40E_GLGEN_I2CPARAMS_CLK_OE_N_MASK);

  wr32(hw, IXL_I2C_REG(hw), *i2cctl);
  ixl_flush(hw);

  i40e_usec_delay(IXL_I2C_T_RISE);

  i2cctl_r = rd32(hw, IXL_I2C_REG(hw));
  if (i2cctl_r & I40E_GLGEN_I2CPARAMS_CLK_IN_MASK)
   break;
 }
}
