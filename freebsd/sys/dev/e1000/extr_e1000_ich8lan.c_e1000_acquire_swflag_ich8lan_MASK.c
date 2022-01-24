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
struct e1000_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  E1000_ERR_CONFIG ; 
 int /*<<< orphan*/  E1000_EXTCNF_CTRL ; 
 int E1000_EXTCNF_CTRL_SWFLAG ; 
 int /*<<< orphan*/  E1000_FWSM ; 
 int FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int PHY_CFG_TIMEOUT ; 
 int SW_FLAG_TIMEOUT ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static s32 FUNC7(struct e1000_hw *hw)
{
	u32 extcnf_ctrl, timeout = PHY_CFG_TIMEOUT;
	s32 ret_val = E1000_SUCCESS;

	FUNC1("e1000_acquire_swflag_ich8lan");

	FUNC0(hw);

	while (timeout) {
		extcnf_ctrl = FUNC4(hw, E1000_EXTCNF_CTRL);
		if (!(extcnf_ctrl & E1000_EXTCNF_CTRL_SWFLAG))
			break;

		FUNC6(1);
		timeout--;
	}

	if (!timeout) {
		FUNC2("SW has already locked the resource.\n");
		ret_val = -E1000_ERR_CONFIG;
		goto out;
	}

	timeout = SW_FLAG_TIMEOUT;

	extcnf_ctrl |= E1000_EXTCNF_CTRL_SWFLAG;
	FUNC5(hw, E1000_EXTCNF_CTRL, extcnf_ctrl);

	while (timeout) {
		extcnf_ctrl = FUNC4(hw, E1000_EXTCNF_CTRL);
		if (extcnf_ctrl & E1000_EXTCNF_CTRL_SWFLAG)
			break;

		FUNC6(1);
		timeout--;
	}

	if (!timeout) {
		FUNC3("Failed to acquire the semaphore, FW or HW has it: FWSM=0x%8.8x EXTCNF_CTRL=0x%8.8x)\n",
			  FUNC4(hw, E1000_FWSM), extcnf_ctrl);
		extcnf_ctrl &= ~E1000_EXTCNF_CTRL_SWFLAG;
		FUNC5(hw, E1000_EXTCNF_CTRL, extcnf_ctrl);
		ret_val = -E1000_ERR_CONFIG;
		goto out;
	}

out:
	return ret_val;
}