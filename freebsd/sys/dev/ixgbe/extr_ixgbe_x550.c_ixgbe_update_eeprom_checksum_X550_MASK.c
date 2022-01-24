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
typedef  scalar_t__ u16 ;
struct ixgbe_hw {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IXGBE_EEPROM_CHECKSUM ; 
 int FUNC2 (struct ixgbe_hw*) ; 
 int FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC4 (struct ixgbe_hw*) ; 
 int FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 

s32 FUNC6(struct ixgbe_hw *hw)
{
	s32 status;
	u16 checksum = 0;

	FUNC0("ixgbe_update_eeprom_checksum_X550");

	/* Read the first word from the EEPROM. If this times out or fails, do
	 * not continue or we could be in for a very long wait while every
	 * EEPROM read fails
	 */
	status = FUNC3(hw, 0, &checksum);
	if (status) {
		FUNC1("EEPROM read failed\n");
		return status;
	}

	status = FUNC2(hw);
	if (status < 0)
		return status;

	checksum = (u16)(status & 0xffff);

	status = FUNC5(hw, IXGBE_EEPROM_CHECKSUM,
					    checksum);
	if (status)
		return status;

	status = FUNC4(hw);

	return status;
}