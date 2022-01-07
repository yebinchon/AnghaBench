
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int DEBUGFUNC (char*) ;
 int ERROR_REPORT2 (int ,char*,int) ;
 int IXGBE_ERROR_INVALID_STATE ;
 scalar_t__ IXGBE_ERR_I2C ;
 int IXGBE_I2CCTL_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_I2C_T_HIGH ;
 int IXGBE_I2C_T_LOW ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_SUCCESS ;
 int ixgbe_lower_i2c_clk (struct ixgbe_hw*,int *) ;
 int ixgbe_raise_i2c_clk (struct ixgbe_hw*,int *) ;
 scalar_t__ ixgbe_set_i2c_data (struct ixgbe_hw*,int *,int) ;
 int usec_delay (int ) ;

__attribute__((used)) static s32 ixgbe_clock_out_i2c_bit(struct ixgbe_hw *hw, bool data)
{
 s32 status;
 u32 i2cctl = IXGBE_READ_REG(hw, IXGBE_I2CCTL_BY_MAC(hw));

 DEBUGFUNC("ixgbe_clock_out_i2c_bit");

 status = ixgbe_set_i2c_data(hw, &i2cctl, data);
 if (status == IXGBE_SUCCESS) {
  ixgbe_raise_i2c_clk(hw, &i2cctl);


  usec_delay(IXGBE_I2C_T_HIGH);

  ixgbe_lower_i2c_clk(hw, &i2cctl);




  usec_delay(IXGBE_I2C_T_LOW);
 } else {
  status = IXGBE_ERR_I2C;
  ERROR_REPORT2(IXGBE_ERROR_INVALID_STATE,
        "I2C data was not set to %X\n", data);
 }

 return status;
}
