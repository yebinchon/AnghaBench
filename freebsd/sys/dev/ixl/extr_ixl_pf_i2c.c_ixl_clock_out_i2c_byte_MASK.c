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
typedef  int /*<<< orphan*/  u32 ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK ; 
 int /*<<< orphan*/  I40E_GLGEN_I2CPARAMS_DATA_OUT_MASK ; 
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*) ; 
 int FUNC2 (struct ixl_pf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32
FUNC6(struct ixl_pf *pf, u8 data)
{
	struct i40e_hw *hw = &pf->hw;
	s32 status = I40E_SUCCESS;
	s32 i;
	u32 i2cctl;
	bool bit;

	FUNC0("ixl_clock_out_i2c_byte");

	for (i = 7; i >= 0; i--) {
		bit = (data >> i) & 0x1;
		status = FUNC2(pf, bit);

		if (status != I40E_SUCCESS)
			break;
	}

	/* Release SDA line (set high) */
	i2cctl = FUNC4(hw, FUNC1(hw));
	i2cctl |= I40E_GLGEN_I2CPARAMS_DATA_OUT_MASK;
	i2cctl &= ~(I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK);
	FUNC5(hw, FUNC1(hw), i2cctl);
	FUNC3(hw);

	return status;
}