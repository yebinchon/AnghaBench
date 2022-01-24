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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_EECD ; 
 int E1000_EECD_FLUPD_I210 ; 
 int /*<<< orphan*/  E1000_ERR_NVM ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 

s32 FUNC5(struct e1000_hw *hw)
{
	s32 ret_val;
	u32 flup;

	FUNC0("e1000_update_flash_i210");

	ret_val = FUNC4(hw);
	if (ret_val == -E1000_ERR_NVM) {
		FUNC1("Flash update time out\n");
		goto out;
	}

	flup = FUNC2(hw, E1000_EECD) | E1000_EECD_FLUPD_I210;
	FUNC3(hw, E1000_EECD, flup);

	ret_val = FUNC4(hw);
	if (ret_val == E1000_SUCCESS)
		FUNC1("Flash update complete\n");
	else
		FUNC1("Flash update time out\n");

out:
	return ret_val;
}