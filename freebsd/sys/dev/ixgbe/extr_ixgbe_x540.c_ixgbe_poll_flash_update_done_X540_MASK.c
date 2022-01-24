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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*) ; 
 scalar_t__ IXGBE_EEC_FLUDONE ; 
 int /*<<< orphan*/  IXGBE_ERROR_POLLING ; 
 int /*<<< orphan*/  IXGBE_ERR_EEPROM ; 
 scalar_t__ IXGBE_FLUDONE_ATTEMPTS ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static s32 FUNC5(struct ixgbe_hw *hw)
{
	u32 i;
	u32 reg;
	s32 status = IXGBE_ERR_EEPROM;

	FUNC0("ixgbe_poll_flash_update_done_X540");

	for (i = 0; i < IXGBE_FLUDONE_ATTEMPTS; i++) {
		reg = FUNC3(hw, FUNC2(hw));
		if (reg & IXGBE_EEC_FLUDONE) {
			status = IXGBE_SUCCESS;
			break;
		}
		FUNC4(5);
	}

	if (i == IXGBE_FLUDONE_ATTEMPTS)
		FUNC1(IXGBE_ERROR_POLLING,
			     "Flash update status polling timed out");

	return status;
}