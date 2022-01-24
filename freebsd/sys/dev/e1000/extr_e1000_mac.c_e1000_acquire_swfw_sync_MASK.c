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
typedef  int u16 ;
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ E1000_ERR_SWFW_SYNC ; 
 int FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  E1000_SW_FW_SYNC ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

s32
FUNC8(struct e1000_hw *hw, u16 mask)
{
	u32 swfw_sync;
	u32 swmask = mask;
	u32 fwmask = mask << 16;
	s32 ret_val = E1000_SUCCESS;
	s32 i = 0, timeout = 200;

	FUNC1("e1000_acquire_swfw_sync");
	FUNC0();
	while (i < timeout) {
		if (FUNC5(hw)) {
			ret_val = -E1000_ERR_SWFW_SYNC;
			goto out;
		}

		swfw_sync = FUNC3(hw, E1000_SW_FW_SYNC);
		if (!(swfw_sync & (fwmask | swmask)))
			break;

		/*
		 * Firmware currently using resource (fwmask)
		 * or other software thread using resource (swmask)
		 */
		FUNC6(hw);
		FUNC7(5);
		i++;
	}

	if (i == timeout) {
		FUNC2("Driver can't access resource, SW_FW_SYNC timeout.\n");
		ret_val = -E1000_ERR_SWFW_SYNC;
		goto out;
	}

	swfw_sync |= swmask;
	FUNC4(hw, E1000_SW_FW_SYNC, swfw_sync);

	FUNC6(hw);

out:
	return ret_val;
}