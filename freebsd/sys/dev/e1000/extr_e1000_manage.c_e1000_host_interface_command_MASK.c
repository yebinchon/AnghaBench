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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  asf_firmware_present; int /*<<< orphan*/  arc_subsystem_valid; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_ERR_HOST_INTERFACE_COMMAND ; 
 int /*<<< orphan*/  E1000_HICR ; 
 scalar_t__ E1000_HICR_C ; 
 scalar_t__ E1000_HICR_EN ; 
 scalar_t__ E1000_HICR_SV ; 
 scalar_t__ E1000_HI_COMMAND_TIMEOUT ; 
 scalar_t__ E1000_HI_MAX_BLOCK_BYTE_LENGTH ; 
 int /*<<< orphan*/  E1000_HOST_IF ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

s32 FUNC7(struct e1000_hw *hw, u8 *buffer, u32 length)
{
	u32 hicr, i;

	FUNC0("e1000_host_interface_command");

	if (!(hw->mac.arc_subsystem_valid)) {
		FUNC1("Hardware doesn't support host interface command.\n");
		return E1000_SUCCESS;
	}

	if (!hw->mac.asf_firmware_present) {
		FUNC1("Firmware is not present.\n");
		return E1000_SUCCESS;
	}

	if (length == 0 || length & 0x3 ||
	    length > E1000_HI_MAX_BLOCK_BYTE_LENGTH) {
		FUNC1("Buffer length failure.\n");
		return -E1000_ERR_HOST_INTERFACE_COMMAND;
	}

	/* Check that the host interface is enabled. */
	hicr = FUNC2(hw, E1000_HICR);
	if (!(hicr & E1000_HICR_EN)) {
		FUNC1("E1000_HOST_EN bit disabled.\n");
		return -E1000_ERR_HOST_INTERFACE_COMMAND;
	}

	/* Calculate length in DWORDs */
	length >>= 2;

	/* The device driver writes the relevant command block
	 * into the ram area.
	 */
	for (i = 0; i < length; i++)
		FUNC5(hw, E1000_HOST_IF, i,
					    *((u32 *)buffer + i));

	/* Setting this bit tells the ARC that a new command is pending. */
	FUNC4(hw, E1000_HICR, hicr | E1000_HICR_C);

	for (i = 0; i < E1000_HI_COMMAND_TIMEOUT; i++) {
		hicr = FUNC2(hw, E1000_HICR);
		if (!(hicr & E1000_HICR_C))
			break;
		FUNC6(1);
	}

	/* Check command successful completion. */
	if (i == E1000_HI_COMMAND_TIMEOUT ||
	    (!(FUNC2(hw, E1000_HICR) & E1000_HICR_SV))) {
		FUNC1("Command has failed with no status valid.\n");
		return -E1000_ERR_HOST_INTERFACE_COMMAND;
	}

	for (i = 0; i < length; i++)
		*((u32 *)buffer + i) = FUNC3(hw,
								  E1000_HOST_IF,
								  i);

	return E1000_SUCCESS;
}