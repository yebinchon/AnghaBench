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
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_GLGEN_I2CPARAMS_CLK_MASK ; 
 int /*<<< orphan*/  I40E_GLGEN_I2CPARAMS_CLK_OE_N_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*) ; 
 int /*<<< orphan*/  IXL_I2C_T_FALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ixl_pf *pf, u32 *i2cctl)
{
	struct i40e_hw *hw = &pf->hw;

	*i2cctl &= ~(I40E_GLGEN_I2CPARAMS_CLK_MASK);
	*i2cctl &= ~(I40E_GLGEN_I2CPARAMS_CLK_OE_N_MASK);

	FUNC3(hw, FUNC0(hw), *i2cctl);
	FUNC2(hw);

	/* SCL fall time (300ns) */
	FUNC1(IXL_I2C_T_FALL);
}