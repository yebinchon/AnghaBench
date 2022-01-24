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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_I2CPARAMS ; 
 int /*<<< orphan*/  E1000_I2C_T_HD_STA ; 
 int /*<<< orphan*/  E1000_I2C_T_LOW ; 
 int /*<<< orphan*/  E1000_I2C_T_SU_STA ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct e1000_hw *hw)
{
	u32 i2cctl = FUNC1(hw, E1000_I2CPARAMS);

	FUNC0("e1000_i2c_start");

	/* Start condition must begin with data and clock high */
	FUNC4(hw, &i2cctl, 1);
	FUNC3(hw, &i2cctl);

	/* Setup time for start condition (4.7us) */
	FUNC5(E1000_I2C_T_SU_STA);

	FUNC4(hw, &i2cctl, 0);

	/* Hold time for start condition (4us) */
	FUNC5(E1000_I2C_T_HD_STA);

	FUNC2(hw, &i2cctl);

	/* Minimum low period of clock is 4.7 us */
	FUNC5(E1000_I2C_T_LOW);

}