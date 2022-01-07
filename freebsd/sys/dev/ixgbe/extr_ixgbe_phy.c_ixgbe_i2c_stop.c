
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_I2CCTL_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_I2C_BB_EN_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_I2C_CLK_OE_N_EN_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_I2C_DATA_OE_N_EN_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_I2C_T_BUF ;
 int IXGBE_I2C_T_SU_STO ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int ixgbe_raise_i2c_clk (struct ixgbe_hw*,int*) ;
 int ixgbe_set_i2c_data (struct ixgbe_hw*,int*,int) ;
 int usec_delay (int ) ;

__attribute__((used)) static void ixgbe_i2c_stop(struct ixgbe_hw *hw)
{
 u32 i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL_BY_MAC(hw));
 u32 data_oe_bit = IXGBE_I2C_DATA_OE_N_EN_BY_MAC(hw);
 u32 clk_oe_bit = IXGBE_I2C_CLK_OE_N_EN_BY_MAC(hw);
 u32 bb_en_bit = IXGBE_I2C_BB_EN_BY_MAC(hw);

 DEBUGFUNC("ixgbe_i2c_stop");


 ixgbe_set_i2c_data(hw, &i2cctl, 0);
 ixgbe_raise_i2c_clk(hw, &i2cctl);


 usec_delay(IXGBE_I2C_T_SU_STO);

 ixgbe_set_i2c_data(hw, &i2cctl, 1);


 usec_delay(IXGBE_I2C_T_BUF);

 if (bb_en_bit || data_oe_bit || clk_oe_bit) {
  i2cctl &= ~bb_en_bit;
  i2cctl |= data_oe_bit | clk_oe_bit;
  IXGBE_WRITE_REG(hw, IXGBE_I2CCTL_BY_MAC(hw), i2cctl);
  IXGBE_WRITE_FLUSH(hw);
 }
}
