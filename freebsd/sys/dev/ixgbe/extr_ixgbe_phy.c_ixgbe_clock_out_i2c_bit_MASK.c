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
typedef  int /*<<< orphan*/  u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  IXGBE_ERROR_INVALID_STATE ; 
 scalar_t__ IXGBE_ERR_I2C ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  IXGBE_I2C_T_HIGH ; 
 int /*<<< orphan*/  IXGBE_I2C_T_LOW ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC8(struct ixgbe_hw *hw, bool data)
{
	s32 status;
	u32 i2cctl = FUNC3(hw, FUNC2(hw));

	FUNC0("ixgbe_clock_out_i2c_bit");

	status = FUNC6(hw, &i2cctl, data);
	if (status == IXGBE_SUCCESS) {
		FUNC5(hw, &i2cctl);

		/* Minimum high period of clock is 4us */
		FUNC7(IXGBE_I2C_T_HIGH);

		FUNC4(hw, &i2cctl);

		/* Minimum low period of clock is 4.7 us.
		 * This also takes care of the data hold time.
		 */
		FUNC7(IXGBE_I2C_T_LOW);
	} else {
		status = IXGBE_ERR_I2C;
		FUNC1(IXGBE_ERROR_INVALID_STATE,
			     "I2C data was not set to %X\n", data);
	}

	return status;
}