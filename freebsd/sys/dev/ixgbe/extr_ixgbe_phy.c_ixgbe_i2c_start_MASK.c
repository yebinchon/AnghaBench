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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  IXGBE_I2C_T_HD_STA ; 
 int /*<<< orphan*/  IXGBE_I2C_T_LOW ; 
 int /*<<< orphan*/  IXGBE_I2C_T_SU_STA ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ixgbe_hw *hw)
{
	u32 i2cctl = FUNC3(hw, FUNC1(hw));

	FUNC0("ixgbe_i2c_start");

	i2cctl |= FUNC2(hw);

	/* Start condition must begin with data and clock high */
	FUNC6(hw, &i2cctl, 1);
	FUNC5(hw, &i2cctl);

	/* Setup time for start condition (4.7us) */
	FUNC7(IXGBE_I2C_T_SU_STA);

	FUNC6(hw, &i2cctl, 0);

	/* Hold time for start condition (4us) */
	FUNC7(IXGBE_I2C_T_HD_STA);

	FUNC4(hw, &i2cctl);

	/* Minimum low period of clock is 4.7 us */
	FUNC7(IXGBE_I2C_T_LOW);

}