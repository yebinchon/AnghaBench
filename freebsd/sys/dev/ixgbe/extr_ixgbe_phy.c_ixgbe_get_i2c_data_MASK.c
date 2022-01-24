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
 int /*<<< orphan*/  IXGBE_I2C_T_FALL ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(struct ixgbe_hw *hw, u32 *i2cctl)
{
	u32 data_oe_bit = FUNC3(hw);
	bool data;
	FUNC6(hw);

	FUNC0("ixgbe_get_i2c_data");

	if (data_oe_bit) {
		*i2cctl |= data_oe_bit;
		FUNC5(hw, FUNC1(hw), *i2cctl);
		FUNC4(hw);
		FUNC7(IXGBE_I2C_T_FALL);
	}

	if (*i2cctl & FUNC2(hw))
		data = 1;
	else
		data = 0;

	return data;
}