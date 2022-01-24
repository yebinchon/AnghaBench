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
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  E1000_ERR_I2C ; 
 int /*<<< orphan*/  E1000_I2CPARAMS ; 
 int /*<<< orphan*/  E1000_I2C_CLK_OE_N ; 
 int /*<<< orphan*/  E1000_I2C_DATA_OE_N ; 
 int /*<<< orphan*/  E1000_I2C_DATA_OUT ; 
 scalar_t__ E1000_I2C_T_FALL ; 
 scalar_t__ E1000_I2C_T_RISE ; 
 scalar_t__ E1000_I2C_T_SU_DATA ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static s32 FUNC7(struct e1000_hw *hw, u32 *i2cctl, bool data)
{
	s32 status = E1000_SUCCESS;

	FUNC0("e1000_set_i2c_data");

	if (data)
		*i2cctl |= E1000_I2C_DATA_OUT;
	else
		*i2cctl &= ~E1000_I2C_DATA_OUT;

	*i2cctl &= ~E1000_I2C_DATA_OE_N;
	*i2cctl |= E1000_I2C_CLK_OE_N;
	FUNC4(hw, E1000_I2CPARAMS, *i2cctl);
	FUNC3(hw);

	/* Data rise/fall (1000ns/300ns) and set-up time (250ns) */
	FUNC6(E1000_I2C_T_RISE + E1000_I2C_T_FALL + E1000_I2C_T_SU_DATA);

	*i2cctl = FUNC2(hw, E1000_I2CPARAMS);
	if (data != FUNC5(i2cctl)) {
		status = E1000_ERR_I2C;
		FUNC1("Error - I2C data was not set to %X.\n", data);
	}

	return status;
}