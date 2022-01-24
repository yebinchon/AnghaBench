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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IXGBE_ERROR_POLLING ; 
 scalar_t__ IXGBE_ERR_EEPROM ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 scalar_t__ IXGBE_SWSM_SMBI ; 
 scalar_t__ IXGBE_SWSM_SWESMBI ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static s32 FUNC8(struct ixgbe_hw *hw)
{
	s32 status = IXGBE_ERR_EEPROM;
	u32 timeout = 2000;
	u32 i;
	u32 swsm;

	FUNC0("ixgbe_get_eeprom_semaphore");


	/* Get SMBI software semaphore between device drivers first */
	for (i = 0; i < timeout; i++) {
		/*
		 * If the SMBI bit is 0 when we read it, then the bit will be
		 * set and we have the semaphore
		 */
		swsm = FUNC3(hw, FUNC4(hw));
		if (!(swsm & IXGBE_SWSM_SMBI)) {
			status = IXGBE_SUCCESS;
			break;
		}
		FUNC7(50);
	}

	if (i == timeout) {
		FUNC1("Driver can't access the Eeprom - SMBI Semaphore "
			 "not granted.\n");
		/*
		 * this release is particularly important because our attempts
		 * above to get the semaphore may have succeeded, and if there
		 * was a timeout, we should unconditionally clear the semaphore
		 * bits to free the driver to make progress
		 */
		FUNC6(hw);

		FUNC7(50);
		/*
		 * one last try
		 * If the SMBI bit is 0 when we read it, then the bit will be
		 * set and we have the semaphore
		 */
		swsm = FUNC3(hw, FUNC4(hw));
		if (!(swsm & IXGBE_SWSM_SMBI))
			status = IXGBE_SUCCESS;
	}

	/* Now get the semaphore between SW/FW through the SWESMBI bit */
	if (status == IXGBE_SUCCESS) {
		for (i = 0; i < timeout; i++) {
			swsm = FUNC3(hw, FUNC4(hw));

			/* Set the SW EEPROM semaphore bit to request access */
			swsm |= IXGBE_SWSM_SWESMBI;
			FUNC5(hw, FUNC4(hw), swsm);

			/*
			 * If we set the bit successfully then we got the
			 * semaphore.
			 */
			swsm = FUNC3(hw, FUNC4(hw));
			if (swsm & IXGBE_SWSM_SWESMBI)
				break;

			FUNC7(50);
		}

		/*
		 * Release semaphores and return error if SW EEPROM semaphore
		 * was not granted because we don't have access to the EEPROM
		 */
		if (i >= timeout) {
			FUNC2(IXGBE_ERROR_POLLING,
			    "SWESMBI Software EEPROM semaphore not granted.\n");
			FUNC6(hw);
			status = IXGBE_ERR_EEPROM;
		}
	} else {
		FUNC2(IXGBE_ERROR_POLLING,
			     "Software semaphore SMBI between device drivers "
			     "not granted.\n");
	}

	return status;
}