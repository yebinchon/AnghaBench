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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int FUNC2 (struct ixgbe_hw*) ; 
 int FUNC3 (struct ixgbe_hw*) ; 
 int FUNC4 (struct ixgbe_hw*) ; 
 int IXGBE_I2C_CLOCK_STRETCHING_TIMEOUT ; 
 int /*<<< orphan*/  IXGBE_I2C_T_RISE ; 
 int FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct ixgbe_hw *hw, u32 *i2cctl)
{
	u32 clk_oe_bit = FUNC3(hw);
	u32 i = 0;
	u32 timeout = IXGBE_I2C_CLOCK_STRETCHING_TIMEOUT;
	u32 i2cctl_r = 0;

	FUNC0("ixgbe_raise_i2c_clk");

	if (clk_oe_bit) {
		*i2cctl |= clk_oe_bit;
		FUNC7(hw, FUNC1(hw), *i2cctl);
	}

	for (i = 0; i < timeout; i++) {
		*i2cctl |= FUNC4(hw);

		FUNC7(hw, FUNC1(hw), *i2cctl);
		FUNC6(hw);
		/* SCL rise time (1000ns) */
		FUNC8(IXGBE_I2C_T_RISE);

		i2cctl_r = FUNC5(hw, FUNC1(hw));
		if (i2cctl_r & FUNC2(hw))
			break;
	}
}