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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ I40E_GLGEN_I2CPARAMS_I2CBB_EN_MASK ; 
 scalar_t__ I40E_SUCCESS ; 
 int /*<<< orphan*/  IXL_DBG_I2C ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct ixl_pf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_pf*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*) ; 
 scalar_t__ FUNC5 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixl_pf*) ; 
 scalar_t__ FUNC9 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i40e_hw*,int /*<<< orphan*/ ,scalar_t__) ; 

s32
FUNC11(struct ixl_pf *pf, u8 byte_offset,
		       u8 dev_addr, u8 data)
{
	struct i40e_hw *hw = &pf->hw;
	s32 status = I40E_SUCCESS;
	u32 max_retry = 1;
	u32 retry = 0;

	u32 i2cctl = FUNC9(hw, FUNC0(hw));
	i2cctl |= I40E_GLGEN_I2CPARAMS_I2CBB_EN_MASK;
	FUNC10(hw, FUNC0(hw), i2cctl);
	FUNC4(hw);

	do {
		FUNC7(pf);

		status = FUNC2(pf, dev_addr);
		if (status != I40E_SUCCESS)
			goto fail;

		status = FUNC5(pf);
		if (status != I40E_SUCCESS)
			goto fail;

		status = FUNC2(pf, byte_offset);
		if (status != I40E_SUCCESS)
			goto fail;

		status = FUNC5(pf);
		if (status != I40E_SUCCESS)
			goto fail;

		status = FUNC2(pf, data);
		if (status != I40E_SUCCESS)
			goto fail;

		status = FUNC5(pf);
		if (status != I40E_SUCCESS)
			goto fail;

		FUNC8(pf);
		goto write_byte_out;

fail:
		FUNC6(pf);
		FUNC1(100);
		retry++;
		if (retry < max_retry)
			FUNC3(pf, IXL_DBG_I2C, "I2C byte write error - Retrying\n");
		else
			FUNC3(pf, IXL_DBG_I2C, "I2C byte write error\n");
	} while (retry < max_retry);

write_byte_out:
	i2cctl = FUNC9(hw, FUNC0(hw));
	i2cctl &= ~I40E_GLGEN_I2CPARAMS_I2CBB_EN_MASK;
	FUNC10(hw, FUNC0(hw), i2cctl);
	FUNC4(hw);

	return status;
}