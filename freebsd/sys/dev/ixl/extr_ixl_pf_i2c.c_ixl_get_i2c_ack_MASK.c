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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_ERR_PHY ; 
 scalar_t__ I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK ; 
 int /*<<< orphan*/  I40E_SUCCESS ; 
 int /*<<< orphan*/  IXL_DBG_I2C ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*) ; 
 int IXL_I2C_T_HIGH ; 
 int IXL_I2C_T_LOW ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixl_pf*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*) ; 
 int FUNC4 (struct ixl_pf*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixl_pf*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixl_pf*,scalar_t__*) ; 
 scalar_t__ FUNC7 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i40e_hw*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static s32
FUNC9(struct ixl_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	s32 status = I40E_SUCCESS;
	u32 i = 0;
	u32 i2cctl = FUNC7(hw, FUNC0(hw));
	u32 timeout = 10;
	bool ack = 1;

	FUNC6(pf, &i2cctl);

	/* Minimum high period of clock is 4us */
	FUNC1(IXL_I2C_T_HIGH);

	i2cctl = FUNC7(hw, FUNC0(hw));
	i2cctl |= I40E_GLGEN_I2CPARAMS_DATA_OE_N_MASK;
	FUNC8(hw, FUNC0(hw), i2cctl);
	FUNC3(hw);

	/* Poll for ACK.  Note that ACK in I2C spec is
	 * transition from 1 to 0 */
	for (i = 0; i < timeout; i++) {
		i2cctl = FUNC7(hw, FUNC0(hw));
		ack = FUNC4(pf, &i2cctl);

		FUNC1(1);
		if (!ack)
			break;
	}

	if (ack) {
		FUNC2(pf, IXL_DBG_I2C, "I2C ack was not received.\n");
		status = I40E_ERR_PHY;
	}

	FUNC5(pf, &i2cctl);

	/* Minimum low period of clock is 4.7 us */
	FUNC1(IXL_I2C_T_LOW);

	return status;
}