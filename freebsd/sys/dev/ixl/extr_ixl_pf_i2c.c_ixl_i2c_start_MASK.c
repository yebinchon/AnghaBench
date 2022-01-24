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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*) ; 
 int /*<<< orphan*/  IXL_I2C_T_HD_STA ; 
 int /*<<< orphan*/  IXL_I2C_T_LOW ; 
 int /*<<< orphan*/  IXL_I2C_T_SU_STA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_pf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ixl_pf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ixl_pf*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i40e_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct ixl_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	u32 i2cctl = FUNC6(hw, FUNC1(hw));

	FUNC0("ixl_i2c_start");

	/* Start condition must begin with data and clock high */
	FUNC5(pf, &i2cctl, 1);
	FUNC4(pf, &i2cctl);

	/* Setup time for start condition (4.7us) */
	FUNC2(IXL_I2C_T_SU_STA);

	FUNC5(pf, &i2cctl, 0);

	/* Hold time for start condition (4us) */
	FUNC2(IXL_I2C_T_HD_STA);

	FUNC3(pf, &i2cctl);

	/* Minimum low period of clock is 4.7 us */
	FUNC2(IXL_I2C_T_LOW);

}