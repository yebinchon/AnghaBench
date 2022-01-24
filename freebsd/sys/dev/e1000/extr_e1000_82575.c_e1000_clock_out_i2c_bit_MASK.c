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
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ E1000_ERR_I2C ; 
 int /*<<< orphan*/  E1000_I2CPARAMS ; 
 int /*<<< orphan*/  E1000_I2C_T_HIGH ; 
 int /*<<< orphan*/  E1000_I2C_T_LOW ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct e1000_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC7(struct e1000_hw *hw, bool data)
{
	s32 status;
	u32 i2cctl = FUNC2(hw, E1000_I2CPARAMS);

	FUNC0("e1000_clock_out_i2c_bit");

	status = FUNC5(hw, &i2cctl, data);
	if (status == E1000_SUCCESS) {
		FUNC4(hw, &i2cctl);

		/* Minimum high period of clock is 4us */
		FUNC6(E1000_I2C_T_HIGH);

		FUNC3(hw, &i2cctl);

		/* Minimum low period of clock is 4.7 us.
		 * This also takes care of the data hold time.
		 */
		FUNC6(E1000_I2C_T_LOW);
	} else {
		status = E1000_ERR_I2C;
		FUNC1("I2C data was not set to %X\n", data);
	}

	return status;
}