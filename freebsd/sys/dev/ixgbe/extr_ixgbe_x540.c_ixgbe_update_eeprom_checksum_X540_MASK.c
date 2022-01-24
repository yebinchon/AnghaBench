#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_5__ {int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct TYPE_7__ {int (* read ) (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__*) ;int (* calc_checksum ) (struct ixgbe_hw*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; TYPE_4__ eeprom; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IXGBE_EEPROM_CHECKSUM ; 
 int IXGBE_ERR_SWFW_SYNC ; 
 int /*<<< orphan*/  IXGBE_GSSR_EEP_SM ; 
 int FUNC2 (struct ixgbe_hw*) ; 
 int FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC5 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 

s32 FUNC8(struct ixgbe_hw *hw)
{
	s32 status;
	u16 checksum;

	FUNC0("ixgbe_update_eeprom_checksum_X540");

	/* Read the first word from the EEPROM. If this times out or fails, do
	 * not continue or we could be in for a very long wait while every
	 * EEPROM read fails
	 */
	status = hw->eeprom.ops.read(hw, 0, &checksum);
	if (status) {
		FUNC1("EEPROM read failed\n");
		return status;
	}

	if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM))
		return IXGBE_ERR_SWFW_SYNC;

	status = hw->eeprom.ops.calc_checksum(hw);
	if (status < 0)
		goto out;

	checksum = (u16)(status & 0xffff);

	/* Do not use hw->eeprom.ops.write because we do not want to
	 * take the synchronization semaphores twice here.
	 */
	status = FUNC3(hw, IXGBE_EEPROM_CHECKSUM, checksum);
	if (status)
		goto out;

	status = FUNC2(hw);

out:
	hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_EEP_SM);

	return status;
}