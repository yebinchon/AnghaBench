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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK ; 
 int /*<<< orphan*/  I40E_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*) ; 
 int /*<<< orphan*/  IXL_I2C_T_HIGH ; 
 int /*<<< orphan*/  IXL_I2C_T_LOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*) ; 
 int FUNC4 (struct ixl_pf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ixl_pf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ixl_pf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32
FUNC9(struct ixl_pf *pf, bool *data)
{
	struct i40e_hw *hw = &pf->hw;
	u32 i2cctl = FUNC7(hw, FUNC1(hw));

	FUNC0("ixl_clock_in_i2c_bit");

	FUNC6(pf, &i2cctl);

	/* Minimum high period of clock is 4us */
	FUNC2(IXL_I2C_T_HIGH);

	i2cctl = FUNC7(hw, FUNC1(hw));
	i2cctl |= I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK;
	FUNC8(hw, FUNC1(hw), i2cctl);
	FUNC3(hw);

	i2cctl = FUNC7(hw, FUNC1(hw));
	*data = FUNC4(pf, &i2cctl);

	FUNC5(pf, &i2cctl);

	/* Minimum low period of clock is 4.7 us */
	FUNC2(IXL_I2C_T_LOW);

	return I40E_SUCCESS;
}