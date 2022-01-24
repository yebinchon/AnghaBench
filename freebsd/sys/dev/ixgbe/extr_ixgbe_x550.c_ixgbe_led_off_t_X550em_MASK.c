#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_ERR_PARAM ; 
 int /*<<< orphan*/  IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE ; 
 int /*<<< orphan*/  IXGBE_X557_LED_MANUAL_SET_MASK ; 
 scalar_t__ IXGBE_X557_LED_PROVISIONING ; 
 scalar_t__ IXGBE_X557_MAX_LED_INDEX ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

s32 FUNC4(struct ixgbe_hw *hw, u32 led_idx)
{
	u16 phy_data;

	FUNC0("ixgbe_led_off_t_X550em");

	if (led_idx >= IXGBE_X557_MAX_LED_INDEX)
		return IXGBE_ERR_PARAM;

	/* To turn on the LED, set mode to ON. */
	FUNC2(hw, IXGBE_X557_LED_PROVISIONING + led_idx,
			   IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, &phy_data);
	phy_data &= ~IXGBE_X557_LED_MANUAL_SET_MASK;
	FUNC3(hw, IXGBE_X557_LED_PROVISIONING + led_idx,
			    IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE, phy_data);

	/* Some designs have the LEDs wired to the MAC */
	return FUNC1(hw, led_idx);
}