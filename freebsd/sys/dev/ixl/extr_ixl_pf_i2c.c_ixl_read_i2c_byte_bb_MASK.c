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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 scalar_t__ I40E_GLGEN_I2CPARAMS_I2CBB_EN_MASK ; 
 int /*<<< orphan*/  I40E_SUCCESS ; 
 int /*<<< orphan*/  IXL_DBG_I2C ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixl_pf*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_pf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ixl_pf*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ixl_pf*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC10 (struct ixl_pf*) ; 
 scalar_t__ FUNC11 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i40e_hw*,int /*<<< orphan*/ ,scalar_t__) ; 

s32
FUNC13(struct ixl_pf *pf, u8 byte_offset,
		  u8 dev_addr, u8 *data)
{
	struct i40e_hw *hw = &pf->hw;
	u32 max_retry = 10;
	u32 retry = 0;
	bool nack = 1;
	s32 status;
	*data = 0;

	u32 i2cctl = FUNC11(hw, FUNC0(hw));
	i2cctl |= I40E_GLGEN_I2CPARAMS_I2CBB_EN_MASK;
	FUNC12(hw, FUNC0(hw), i2cctl);
	FUNC6(hw);

	do {
		FUNC9(pf);

		/* Device Address and write indication */
		status = FUNC4(pf, dev_addr);
		if (status != I40E_SUCCESS) {
			FUNC5(pf, IXL_DBG_I2C, "dev_addr clock out error\n");
			goto fail;
		}

		status = FUNC7(pf);
		if (status != I40E_SUCCESS) {
			FUNC5(pf, IXL_DBG_I2C, "dev_addr i2c ack error\n");
			goto fail;
		}

		status = FUNC4(pf, byte_offset);
		if (status != I40E_SUCCESS) {
			FUNC5(pf, IXL_DBG_I2C, "byte_offset clock out error\n");
			goto fail;
		}

		status = FUNC7(pf);
		if (status != I40E_SUCCESS) {
			FUNC5(pf, IXL_DBG_I2C, "byte_offset i2c ack error\n");
			goto fail;
		}

		FUNC9(pf);

		/* Device Address and read indication */
		status = FUNC4(pf, (dev_addr | 0x1));
		if (status != I40E_SUCCESS)
			goto fail;

		status = FUNC7(pf);
		if (status != I40E_SUCCESS)
			goto fail;

		status = FUNC2(pf, data);
		if (status != I40E_SUCCESS)
			goto fail;

		status = FUNC3(pf, nack);
		if (status != I40E_SUCCESS)
			goto fail;

		FUNC10(pf);
		status = I40E_SUCCESS;
		goto done;

fail:
		FUNC8(pf);
		FUNC1(100);
		retry++;
		if (retry < max_retry)
			FUNC5(pf, IXL_DBG_I2C, "I2C byte read error - Retrying\n");
		else
			FUNC5(pf, IXL_DBG_I2C, "I2C byte read error\n");

	} while (retry < max_retry);
done:
	i2cctl = FUNC11(hw, FUNC0(hw));
	i2cctl &= ~I40E_GLGEN_I2CPARAMS_I2CBB_EN_MASK;
	FUNC12(hw, FUNC0(hw), i2cctl);
	FUNC6(hw);

	return status;
}