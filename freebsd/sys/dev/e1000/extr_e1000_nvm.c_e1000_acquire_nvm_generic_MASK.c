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
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_EECD ; 
 int E1000_EECD_GNT ; 
 int E1000_EECD_REQ ; 
 scalar_t__ E1000_ERR_NVM ; 
 scalar_t__ E1000_NVM_GRANT_ATTEMPTS ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

s32 FUNC5(struct e1000_hw *hw)
{
	u32 eecd = FUNC2(hw, E1000_EECD);
	s32 timeout = E1000_NVM_GRANT_ATTEMPTS;

	FUNC0("e1000_acquire_nvm_generic");

	FUNC3(hw, E1000_EECD, eecd | E1000_EECD_REQ);
	eecd = FUNC2(hw, E1000_EECD);

	while (timeout) {
		if (eecd & E1000_EECD_GNT)
			break;
		FUNC4(5);
		eecd = FUNC2(hw, E1000_EECD);
		timeout--;
	}

	if (!timeout) {
		eecd &= ~E1000_EECD_REQ;
		FUNC3(hw, E1000_EECD, eecd);
		FUNC1("Could not acquire NVM grant\n");
		return -E1000_ERR_NVM;
	}

	return E1000_SUCCESS;
}