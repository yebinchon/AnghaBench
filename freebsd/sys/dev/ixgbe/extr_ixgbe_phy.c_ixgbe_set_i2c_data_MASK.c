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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  IXGBE_ERROR_INVALID_STATE ; 
 int /*<<< orphan*/  IXGBE_ERR_I2C ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int FUNC3 (struct ixgbe_hw*) ; 
 int FUNC4 (struct ixgbe_hw*) ; 
 scalar_t__ IXGBE_I2C_T_FALL ; 
 scalar_t__ IXGBE_I2C_T_RISE ; 
 scalar_t__ IXGBE_I2C_T_SU_DATA ; 
 int FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct ixgbe_hw*,int*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static s32 FUNC10(struct ixgbe_hw *hw, u32 *i2cctl, bool data)
{
	u32 data_oe_bit = FUNC3(hw);
	s32 status = IXGBE_SUCCESS;

	FUNC0("ixgbe_set_i2c_data");

	if (data)
		*i2cctl |= FUNC4(hw);
	else
		*i2cctl &= ~(FUNC4(hw));
	*i2cctl &= ~data_oe_bit;

	FUNC7(hw, FUNC2(hw), *i2cctl);
	FUNC6(hw);

	/* Data rise/fall (1000ns/300ns) and set-up time (250ns) */
	FUNC9(IXGBE_I2C_T_RISE + IXGBE_I2C_T_FALL + IXGBE_I2C_T_SU_DATA);

	if (!data)	/* Can't verify data in this case */
		return IXGBE_SUCCESS;
	if (data_oe_bit) {
		*i2cctl |= data_oe_bit;
		FUNC7(hw, FUNC2(hw), *i2cctl);
		FUNC6(hw);
	}

	/* Verify data was set correctly */
	*i2cctl = FUNC5(hw, FUNC2(hw));
	if (data != FUNC8(hw, i2cctl)) {
		status = IXGBE_ERR_I2C;
		FUNC1(IXGBE_ERROR_INVALID_STATE,
			     "Error - I2C data was not set to %X.\n",
			     data);
	}

	return status;
}