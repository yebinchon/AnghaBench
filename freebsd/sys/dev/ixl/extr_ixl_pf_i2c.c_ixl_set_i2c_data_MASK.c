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
 int /*<<< orphan*/  I40E_ERR_PHY ; 
 int /*<<< orphan*/  I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK ; 
 int /*<<< orphan*/  I40E_GLGEN_I2CPARAMS_DATA_OUT_MASK ; 
 int /*<<< orphan*/  I40E_SUCCESS ; 
 int /*<<< orphan*/  IXL_DBG_I2C ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*) ; 
 scalar_t__ IXL_I2C_T_FALL ; 
 scalar_t__ IXL_I2C_T_RISE ; 
 scalar_t__ IXL_I2C_T_SU_DATA ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_pf*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*) ; 
 int FUNC5 (struct ixl_pf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32
FUNC8(struct ixl_pf *pf, u32 *i2cctl, bool data)
{
	struct i40e_hw *hw = &pf->hw;
	s32 status = I40E_SUCCESS;

	FUNC0("ixl_set_i2c_data");

	if (data)
		*i2cctl |= I40E_GLGEN_I2CPARAMS_DATA_OUT_MASK;
	else
		*i2cctl &= ~(I40E_GLGEN_I2CPARAMS_DATA_OUT_MASK);
	*i2cctl &= ~(I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK);

	FUNC7(hw, FUNC1(hw), *i2cctl);
	FUNC4(hw);

	/* Data rise/fall (1000ns/300ns) and set-up time (250ns) */
	FUNC2(IXL_I2C_T_RISE + IXL_I2C_T_FALL + IXL_I2C_T_SU_DATA);

	/* Verify data was set correctly */
	*i2cctl = FUNC6(hw, FUNC1(hw));
	if (data != FUNC5(pf, i2cctl)) {
		status = I40E_ERR_PHY;
		FUNC3(pf, IXL_DBG_I2C, "Error - I2C data was not set to %X.\n", data);
	}

	return status;
}