
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_I2CCTL_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_I2C_BB_EN_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_I2C_T_HD_STA ;
 int IXGBE_I2C_T_LOW ;
 int IXGBE_I2C_T_SU_STA ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int ixgbe_lower_i2c_clk (struct ixgbe_hw*,int *) ;
 int ixgbe_raise_i2c_clk (struct ixgbe_hw*,int *) ;
 int ixgbe_set_i2c_data (struct ixgbe_hw*,int *,int) ;
 int usec_delay (int ) ;

__attribute__((used)) static void ixgbe_i2c_start(struct ixgbe_hw *hw)
{
 u32 i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL_BY_MAC(hw));

 DEBUGFUNC("ixgbe_i2c_start");

 i2cctl |= IXGBE_I2C_BB_EN_BY_MAC(hw);


 ixgbe_set_i2c_data(hw, &i2cctl, 1);
 ixgbe_raise_i2c_clk(hw, &i2cctl);


 usec_delay(IXGBE_I2C_T_SU_STA);

 ixgbe_set_i2c_data(hw, &i2cctl, 0);


 usec_delay(IXGBE_I2C_T_HD_STA);

 ixgbe_lower_i2c_clk(hw, &i2cctl);


 usec_delay(IXGBE_I2C_T_LOW);

}
