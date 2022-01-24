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
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ I40E_ERR_PHY ; 
 scalar_t__ I40E_SUCCESS ; 
 int /*<<< orphan*/  IXL_DBG_I2C ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*) ; 
 int /*<<< orphan*/  IXL_I2C_T_HIGH ; 
 int /*<<< orphan*/  IXL_I2C_T_LOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixl_pf*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_pf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ixl_pf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct ixl_pf*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32
FUNC7(struct ixl_pf *pf, bool data)
{
	struct i40e_hw *hw = &pf->hw;
	s32 status;
	u32 i2cctl = FUNC6(hw, FUNC0(hw));

	status = FUNC5(pf, &i2cctl, data);
	if (status == I40E_SUCCESS) {
		FUNC4(pf, &i2cctl);

		/* Minimum high period of clock is 4us */
		FUNC1(IXL_I2C_T_HIGH);

		FUNC3(pf, &i2cctl);

		/* Minimum low period of clock is 4.7 us.
		 * This also takes care of the data hold time.
		 */
		FUNC1(IXL_I2C_T_LOW);
	} else {
		status = I40E_ERR_PHY;
		FUNC2(pf, IXL_DBG_I2C, "I2C data was not set to %#x\n", data);
	}

	return status;
}