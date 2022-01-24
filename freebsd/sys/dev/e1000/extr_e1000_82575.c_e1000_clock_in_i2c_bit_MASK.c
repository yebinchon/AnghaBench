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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_I2CPARAMS ; 
 int /*<<< orphan*/  E1000_I2C_T_HIGH ; 
 int /*<<< orphan*/  E1000_I2C_T_LOW ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC6(struct e1000_hw *hw, bool *data)
{
	u32 i2cctl = FUNC1(hw, E1000_I2CPARAMS);

	FUNC0("e1000_clock_in_i2c_bit");

	FUNC4(hw, &i2cctl);

	/* Minimum high period of clock is 4us */
	FUNC5(E1000_I2C_T_HIGH);

	i2cctl = FUNC1(hw, E1000_I2CPARAMS);
	*data = FUNC2(&i2cctl);

	FUNC3(hw, &i2cctl);

	/* Minimum low period of clock is 4.7 us */
	FUNC5(E1000_I2C_T_LOW);

	return E1000_SUCCESS;
}