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
 int /*<<< orphan*/  IXL_I2C_T_BUF ; 
 int /*<<< orphan*/  IXL_I2C_T_SU_STO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_pf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ixl_pf*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ixl_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	u32 i2cctl = FUNC5(hw, FUNC1(hw));

	FUNC0("ixl_i2c_stop");

	/* Stop condition must begin with data low and clock high */
	FUNC4(pf, &i2cctl, 0);
	FUNC3(pf, &i2cctl);

	/* Setup time for stop condition (4us) */
	FUNC2(IXL_I2C_T_SU_STO);

	FUNC4(pf, &i2cctl, 1);

	/* bus free time between stop and start (4.7us)*/
	FUNC2(IXL_I2C_T_BUF);
}