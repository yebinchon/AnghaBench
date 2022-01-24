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
struct TYPE_8__ {int /*<<< orphan*/  flcdone; scalar_t__ flcerr; } ;
union ich8_hws_flash_status {TYPE_4__ hsf_status; int /*<<< orphan*/  regval; } ;
struct TYPE_7__ {int fldbcount; int /*<<< orphan*/  flcycle; } ;
union ich8_hws_flash_ctrl {int regval; TYPE_3__ hsf_ctrl; } ;
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_6__ {int flash_base_addr; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_2__ nvm; TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ E1000_ERR_NVM ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ICH_CYCLE_READ ; 
 scalar_t__ ICH_FLASH_CYCLE_REPEAT_COUNT ; 
 int /*<<< orphan*/  ICH_FLASH_FADDR ; 
 int /*<<< orphan*/  ICH_FLASH_FDATA0 ; 
 int /*<<< orphan*/  ICH_FLASH_HSFSTS ; 
 int ICH_FLASH_LINEAR_ADDR_MASK ; 
 int /*<<< orphan*/  ICH_FLASH_READ_COMMAND_TIMEOUT ; 
 scalar_t__ FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct e1000_hw*) ; 
 scalar_t__ e1000_pch_spt ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static s32 FUNC8(struct e1000_hw *hw, u32 offset,
					   u32 *data)
{
	union ich8_hws_flash_status hsfsts;
	union ich8_hws_flash_ctrl hsflctl;
	u32 flash_linear_addr;
	s32 ret_val = -E1000_ERR_NVM;
	u8 count = 0;

	FUNC0("e1000_read_flash_data_ich8lan");

		if (offset > ICH_FLASH_LINEAR_ADDR_MASK ||
		    hw->mac.type < e1000_pch_spt)
			return -E1000_ERR_NVM;
	flash_linear_addr = ((ICH_FLASH_LINEAR_ADDR_MASK & offset) +
			     hw->nvm.flash_base_addr);

	do {
		FUNC7(1);
		/* Steps */
		ret_val = FUNC6(hw);
		if (ret_val != E1000_SUCCESS)
			break;
		/* In SPT, This register is in Lan memory space, not flash.
		 * Therefore, only 32 bit access is supported
		 */
		hsflctl.regval = FUNC2(hw, ICH_FLASH_HSFSTS)>>16;

		/* 0b/1b corresponds to 1 or 2 byte size, respectively. */
		hsflctl.hsf_ctrl.fldbcount = sizeof(u32) - 1;
		hsflctl.hsf_ctrl.flcycle = ICH_CYCLE_READ;
		/* In SPT, This register is in Lan memory space, not flash.
		 * Therefore, only 32 bit access is supported
		 */
		FUNC4(hw, ICH_FLASH_HSFSTS,
				      (u32)hsflctl.regval << 16);
		FUNC4(hw, ICH_FLASH_FADDR, flash_linear_addr);

		ret_val = FUNC5(hw,
						ICH_FLASH_READ_COMMAND_TIMEOUT);

		/* Check if FCERR is set to 1, if set to 1, clear it
		 * and try the whole sequence a few more times, else
		 * read in (shift in) the Flash Data0, the order is
		 * least significant byte first msb to lsb
		 */
		if (ret_val == E1000_SUCCESS) {
			*data = FUNC2(hw, ICH_FLASH_FDATA0);
			break;
		} else {
			/* If we've gotten here, then things are probably
			 * completely hosed, but if the error condition is
			 * detected, it won't hurt to give it another try...
			 * ICH_FLASH_CYCLE_REPEAT_COUNT times.
			 */
			hsfsts.regval = FUNC3(hw,
							      ICH_FLASH_HSFSTS);
			if (hsfsts.hsf_status.flcerr) {
				/* Repeat for some time before giving up. */
				continue;
			} else if (!hsfsts.hsf_status.flcdone) {
				FUNC1("Timeout error - flash cycle did not complete.\n");
				break;
			}
		}
	} while (count++ < ICH_FLASH_CYCLE_REPEAT_COUNT);

	return ret_val;
}