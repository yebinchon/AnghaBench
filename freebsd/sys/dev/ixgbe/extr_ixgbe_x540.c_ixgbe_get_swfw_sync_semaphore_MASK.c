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
typedef  scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IXGBE_ERROR_POLLING ; 
 scalar_t__ IXGBE_ERR_EEPROM ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ IXGBE_SUCCESS ; 
 scalar_t__ IXGBE_SWFW_REGSMP ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 scalar_t__ IXGBE_SWSM_SMBI ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static s32 FUNC7(struct ixgbe_hw *hw)
{
	s32 status = IXGBE_ERR_EEPROM;
	u32 timeout = 2000;
	u32 i;
	u32 swsm;

	FUNC0("ixgbe_get_swfw_sync_semaphore");

	/* Get SMBI software semaphore between device drivers first */
	for (i = 0; i < timeout; i++) {
		/*
		 * If the SMBI bit is 0 when we read it, then the bit will be
		 * set and we have the semaphore
		 */
		swsm = FUNC2(hw, FUNC4(hw));
		if (!(swsm & IXGBE_SWSM_SMBI)) {
			status = IXGBE_SUCCESS;
			break;
		}
		FUNC6(50);
	}

	/* Now get the semaphore between SW/FW through the REGSMP bit */
	if (status == IXGBE_SUCCESS) {
		for (i = 0; i < timeout; i++) {
			swsm = FUNC2(hw, FUNC3(hw));
			if (!(swsm & IXGBE_SWFW_REGSMP))
				break;

			FUNC6(50);
		}

		/*
		 * Release semaphores and return error if SW NVM semaphore
		 * was not granted because we don't have access to the EEPROM
		 */
		if (i >= timeout) {
			FUNC1(IXGBE_ERROR_POLLING,
				"REGSMP Software NVM semaphore not granted.\n");
			FUNC5(hw);
			status = IXGBE_ERR_EEPROM;
		}
	} else {
		FUNC1(IXGBE_ERROR_POLLING,
			     "Software semaphore SMBI between device drivers "
			     "not granted.\n");
	}

	return status;
}