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
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_ERR_SWFW_SYNC ; 
 int /*<<< orphan*/  IXGBE_GSSR ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

s32 FUNC7(struct ixgbe_hw *hw, u32 mask)
{
	u32 gssr = 0;
	u32 swmask = mask;
	u32 fwmask = mask << 5;
	u32 timeout = 200;
	u32 i;

	FUNC0("ixgbe_acquire_swfw_sync");

	for (i = 0; i < timeout; i++) {
		/*
		 * SW NVM semaphore bit is used for access to all
		 * SW_FW_SYNC bits (not just NVM)
		 */
		if (FUNC3(hw))
			return IXGBE_ERR_SWFW_SYNC;

		gssr = FUNC1(hw, IXGBE_GSSR);
		if (!(gssr & (fwmask | swmask))) {
			gssr |= swmask;
			FUNC2(hw, IXGBE_GSSR, gssr);
			FUNC4(hw);
			return IXGBE_SUCCESS;
		} else {
			/* Resource is currently in use by FW or SW */
			FUNC4(hw);
			FUNC6(5);
		}
	}

	/* If time expired clear the bits holding the lock and retry */
	if (gssr & (fwmask | swmask))
		FUNC5(hw, gssr & (fwmask | swmask));

	FUNC6(5);
	return IXGBE_ERR_SWFW_SYNC;
}