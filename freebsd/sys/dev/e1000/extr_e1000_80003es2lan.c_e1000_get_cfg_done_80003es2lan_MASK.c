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
struct TYPE_2__ {int func; } ;
struct e1000_hw {TYPE_1__ bus; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_EEMNGCTL ; 
 scalar_t__ E1000_ERR_RESET ; 
 int E1000_NVM_CFG_DONE_PORT_0 ; 
 int E1000_NVM_CFG_DONE_PORT_1 ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_SUCCESS ; 
 scalar_t__ PHY_CFG_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static s32 FUNC4(struct e1000_hw *hw)
{
	s32 timeout = PHY_CFG_TIMEOUT;
	u32 mask = E1000_NVM_CFG_DONE_PORT_0;

	FUNC0("e1000_get_cfg_done_80003es2lan");

	if (hw->bus.func == 1)
		mask = E1000_NVM_CFG_DONE_PORT_1;

	while (timeout) {
		if (FUNC2(hw, E1000_EEMNGCTL) & mask)
			break;
		FUNC3(1);
		timeout--;
	}
	if (!timeout) {
		FUNC1("MNG configuration cycle has not completed.\n");
		return -E1000_ERR_RESET;
	}

	return E1000_SUCCESS;
}