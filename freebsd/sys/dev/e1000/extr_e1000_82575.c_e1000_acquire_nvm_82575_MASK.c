#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_EECD ; 
 int E1000_EECD_ABORT ; 
 int E1000_EECD_BLOCKED ; 
 int E1000_EECD_ERROR_CLR ; 
 int E1000_EECD_TIMEOUT ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  E1000_SWFW_EEP_SM ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ e1000_82580 ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ e1000_i350 ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC7(struct e1000_hw *hw)
{
	s32 ret_val = E1000_SUCCESS;

	FUNC0("e1000_acquire_nvm_82575");

	ret_val = FUNC5(hw, E1000_SWFW_EEP_SM);
	if (ret_val)
		goto out;

	/*
	 * Check if there is some access
	 * error this access may hook on
	 */
	if (hw->mac.type == e1000_i350) {
		u32 eecd = FUNC2(hw, E1000_EECD);
		if (eecd & (E1000_EECD_BLOCKED | E1000_EECD_ABORT |
		    E1000_EECD_TIMEOUT)) {
			/* Clear all access error flags */
			FUNC3(hw, E1000_EECD, eecd |
					E1000_EECD_ERROR_CLR);
			FUNC1("Nvm bit banging access error detected and cleared.\n");
		}
	}

	if (hw->mac.type == e1000_82580) {
		u32 eecd = FUNC2(hw, E1000_EECD);
		if (eecd & E1000_EECD_BLOCKED) {
			/* Clear access error flag */
			FUNC3(hw, E1000_EECD, eecd |
					E1000_EECD_BLOCKED);
			FUNC1("Nvm bit banging access error detected and cleared.\n");
		}
	}

	ret_val = FUNC4(hw);
	if (ret_val)
		FUNC6(hw, E1000_SWFW_EEP_SM);

out:
	return ret_val;
}