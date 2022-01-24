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
typedef  int u32 ;
struct i40e_hw {int dummy; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int I40E_ERR_NOT_READY ; 
 int I40E_ERR_RESET_FAILED ; 
 int /*<<< orphan*/  I40E_GLGEN_RSTAT ; 
 int I40E_GLGEN_RSTAT_DEVSTATE_MASK ; 
 int /*<<< orphan*/  I40E_GLGEN_RSTCTL ; 
 int I40E_GLGEN_RSTCTL_GRSTDEL_MASK ; 
 int I40E_GLGEN_RSTCTL_GRSTDEL_SHIFT ; 
 int /*<<< orphan*/  I40E_GLNVM_ULD ; 
 int I40E_GLNVM_ULD_CONF_CORE_DONE_MASK ; 
 int I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK ; 
 int /*<<< orphan*/  I40E_PFGEN_CTRL ; 
 int I40E_PFGEN_CTRL_PFSWR_MASK ; 
 int I40E_PF_RESET_WAIT_COUNT ; 
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

enum i40e_status_code FUNC6(struct i40e_hw *hw)
{
	u32 cnt = 0;
	u32 cnt1 = 0;
	u32 reg = 0;
	u32 grst_del;

	/* Poll for Global Reset steady state in case of recent GRST.
	 * The grst delay value is in 100ms units, and we'll wait a
	 * couple counts longer to be sure we don't just miss the end.
	 */
	grst_del = (FUNC4(hw, I40E_GLGEN_RSTCTL) &
			I40E_GLGEN_RSTCTL_GRSTDEL_MASK) >>
			I40E_GLGEN_RSTCTL_GRSTDEL_SHIFT;

	grst_del = grst_del * 20;

	for (cnt = 0; cnt < grst_del; cnt++) {
		reg = FUNC4(hw, I40E_GLGEN_RSTAT);
		if (!(reg & I40E_GLGEN_RSTAT_DEVSTATE_MASK))
			break;
		FUNC3(100);
	}
	if (reg & I40E_GLGEN_RSTAT_DEVSTATE_MASK) {
		FUNC0("Global reset polling failed to complete.\n");
		return I40E_ERR_RESET_FAILED;
	}

	/* Now Wait for the FW to be ready */
	for (cnt1 = 0; cnt1 < I40E_PF_RESET_WAIT_COUNT; cnt1++) {
		reg = FUNC4(hw, I40E_GLNVM_ULD);
		reg &= (I40E_GLNVM_ULD_CONF_CORE_DONE_MASK |
			I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK);
		if (reg == (I40E_GLNVM_ULD_CONF_CORE_DONE_MASK |
			    I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK)) {
			FUNC1("Core and Global modules ready %d\n", cnt1);
			break;
		}
		FUNC3(10);
	}
	if (!(reg & (I40E_GLNVM_ULD_CONF_CORE_DONE_MASK |
		     I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK))) {
		FUNC0("wait for FW Reset complete timedout\n");
		FUNC1("I40E_GLNVM_ULD = 0x%x\n", reg);
		return I40E_ERR_RESET_FAILED;
	}

	/* If there was a Global Reset in progress when we got here,
	 * we don't need to do the PF Reset
	 */
	if (!cnt) {
		u32 reg2 = 0;

		reg = FUNC4(hw, I40E_PFGEN_CTRL);
		FUNC5(hw, I40E_PFGEN_CTRL,
		     (reg | I40E_PFGEN_CTRL_PFSWR_MASK));
		for (cnt = 0; cnt < I40E_PF_RESET_WAIT_COUNT; cnt++) {
			reg = FUNC4(hw, I40E_PFGEN_CTRL);
			if (!(reg & I40E_PFGEN_CTRL_PFSWR_MASK))
				break;
			reg2 = FUNC4(hw, I40E_GLGEN_RSTAT);
			if (reg2 & I40E_GLGEN_RSTAT_DEVSTATE_MASK) {
				FUNC0("Core reset upcoming. Skipping PF reset request.\n");
				FUNC1("I40E_GLGEN_RSTAT = 0x%x\n", reg2);
				return I40E_ERR_NOT_READY;
			}
			FUNC3(1);
		}
		if (reg & I40E_PFGEN_CTRL_PFSWR_MASK) {
			FUNC0("PF reset polling failed to complete.\n");
			return I40E_ERR_RESET_FAILED;
		}
	}

	FUNC2(hw);


	return I40E_SUCCESS;
}