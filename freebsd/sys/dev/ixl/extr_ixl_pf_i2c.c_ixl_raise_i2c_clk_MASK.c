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
typedef  scalar_t__ u32 ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;

/* Variables and functions */
 scalar_t__ I40E_GLGEN_I2CPARAMS_CLK_IN_MASK ; 
 scalar_t__ I40E_GLGEN_I2CPARAMS_CLK_MASK ; 
 scalar_t__ I40E_GLGEN_I2CPARAMS_CLK_OE_N_MASK ; 
 scalar_t__ IXL_I2C_CLOCK_STRETCHING_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*) ; 
 int /*<<< orphan*/  IXL_I2C_T_RISE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*) ; 
 scalar_t__ FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct ixl_pf *pf, u32 *i2cctl)
{
	struct i40e_hw *hw = &pf->hw;
	u32 i = 0;
	u32 timeout = IXL_I2C_CLOCK_STRETCHING_TIMEOUT;
	u32 i2cctl_r = 0;

	for (i = 0; i < timeout; i++) {
		*i2cctl |= I40E_GLGEN_I2CPARAMS_CLK_MASK;
		*i2cctl &= ~(I40E_GLGEN_I2CPARAMS_CLK_OE_N_MASK);

		FUNC4(hw, FUNC0(hw), *i2cctl);
		FUNC2(hw);
		/* SCL rise time (1000ns) */
		FUNC1(IXL_I2C_T_RISE);

		i2cctl_r = FUNC3(hw, FUNC0(hw));
		if (i2cctl_r & I40E_GLGEN_I2CPARAMS_CLK_IN_MASK)
			break;
	}
}