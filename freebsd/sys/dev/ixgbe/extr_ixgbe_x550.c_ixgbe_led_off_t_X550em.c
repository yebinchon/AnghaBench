
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int DEBUGFUNC (char*) ;
 int IXGBE_ERR_PARAM ;
 int IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE ;
 int IXGBE_X557_LED_MANUAL_SET_MASK ;
 scalar_t__ IXGBE_X557_LED_PROVISIONING ;
 scalar_t__ IXGBE_X557_MAX_LED_INDEX ;
 int ixgbe_led_off_generic (struct ixgbe_hw*,scalar_t__) ;
 int ixgbe_read_phy_reg (struct ixgbe_hw*,scalar_t__,int ,int *) ;
 int ixgbe_write_phy_reg (struct ixgbe_hw*,scalar_t__,int ,int ) ;

s32 ixgbe_led_off_t_X550em(struct ixgbe_hw *hw, u32 led_idx)
{
 u16 phy_data;

 DEBUGFUNC("ixgbe_led_off_t_X550em");

 if (led_idx >= IXGBE_X557_MAX_LED_INDEX)
  return IXGBE_ERR_PARAM;


 ixgbe_read_phy_reg(hw, IXGBE_X557_LED_PROVISIONING + led_idx,
      IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, &phy_data);
 phy_data &= ~IXGBE_X557_LED_MANUAL_SET_MASK;
 ixgbe_write_phy_reg(hw, IXGBE_X557_LED_PROVISIONING + led_idx,
       IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, phy_data);


 return ixgbe_led_off_generic(hw, led_idx);
}
