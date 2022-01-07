
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;
typedef scalar_t__ s32 ;


 scalar_t__ I40E_ERR_PHY ;
 scalar_t__ I40E_SUCCESS ;
 int IXL_DBG_I2C ;
 int IXL_I2C_REG (struct i40e_hw*) ;
 int IXL_I2C_T_HIGH ;
 int IXL_I2C_T_LOW ;
 int i40e_usec_delay (int ) ;
 int ixl_dbg (struct ixl_pf*,int ,char*,int) ;
 int ixl_lower_i2c_clk (struct ixl_pf*,int *) ;
 int ixl_raise_i2c_clk (struct ixl_pf*,int *) ;
 scalar_t__ ixl_set_i2c_data (struct ixl_pf*,int *,int) ;
 int rd32 (struct i40e_hw*,int ) ;

__attribute__((used)) static s32
ixl_clock_out_i2c_bit(struct ixl_pf *pf, bool data)
{
 struct i40e_hw *hw = &pf->hw;
 s32 status;
 u32 i2cctl = rd32(hw, IXL_I2C_REG(hw));

 status = ixl_set_i2c_data(pf, &i2cctl, data);
 if (status == I40E_SUCCESS) {
  ixl_raise_i2c_clk(pf, &i2cctl);


  i40e_usec_delay(IXL_I2C_T_HIGH);

  ixl_lower_i2c_clk(pf, &i2cctl);




  i40e_usec_delay(IXL_I2C_T_LOW);
 } else {
  status = I40E_ERR_PHY;
  ixl_dbg(pf, IXL_DBG_I2C, "I2C data was not set to %#x\n", data);
 }

 return status;
}
