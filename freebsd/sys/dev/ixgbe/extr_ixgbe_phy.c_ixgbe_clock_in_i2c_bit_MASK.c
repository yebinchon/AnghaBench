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
typedef  int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int FUNC2 (struct ixgbe_hw*) ; 
 int FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  IXGBE_I2C_T_HIGH ; 
 int /*<<< orphan*/  IXGBE_I2C_T_LOW ; 
 int FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC11(struct ixgbe_hw *hw, bool *data)
{
	u32 i2cctl = FUNC4(hw, FUNC1(hw));
	u32 data_oe_bit = FUNC2(hw);

	FUNC0("ixgbe_clock_in_i2c_bit");

	if (data_oe_bit) {
		i2cctl |= FUNC3(hw);
		i2cctl |= data_oe_bit;
		FUNC6(hw, FUNC1(hw), i2cctl);
		FUNC5(hw);
	}
	FUNC9(hw, &i2cctl);

	/* Minimum high period of clock is 4us */
	FUNC10(IXGBE_I2C_T_HIGH);

	i2cctl = FUNC4(hw, FUNC1(hw));
	*data = FUNC7(hw, &i2cctl);

	FUNC8(hw, &i2cctl);

	/* Minimum low period of clock is 4.7 us */
	FUNC10(IXGBE_I2C_T_LOW);

	return IXGBE_SUCCESS;
}