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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_7__ {int /*<<< orphan*/  (* release_swfw_sync ) (struct e1000_hw*,int /*<<< orphan*/ ) ;scalar_t__ (* acquire_swfw_sync ) (struct e1000_hw*,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {scalar_t__ type; TYPE_3__ ops; } ;
struct TYPE_5__ {int global_device_reset; } ;
struct TYPE_6__ {TYPE_1__ _82575; } ;
struct e1000_hw {int device_id; TYPE_4__ mac; TYPE_2__ dev_spec; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_DEV_RST ; 
 int E1000_CTRL_RST ; 
#define  E1000_DEV_ID_DH89XXCC_SGMII 128 
 int /*<<< orphan*/  E1000_ICR ; 
 int /*<<< orphan*/  E1000_IMC ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_STATUS ; 
 int E1000_STAT_DEV_RST_SET ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  E1000_SW_SYNCH_MB ; 
 int /*<<< orphan*/  E1000_TCTL ; 
 int E1000_TCTL_PSP ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 void* FALSE ; 
 scalar_t__ e1000_82580 ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*) ; 
 scalar_t__ FUNC8 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct e1000_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC12(struct e1000_hw *hw)
{
	s32 ret_val = E1000_SUCCESS;
	/* BH SW mailbox bit in SW_FW_SYNC */
	u16 swmbsw_mask = E1000_SW_SYNCH_MB;
	u32 ctrl;
	bool global_device_reset = hw->dev_spec._82575.global_device_reset;

	FUNC0("e1000_reset_hw_82580");

	hw->dev_spec._82575.global_device_reset = FALSE;

	/* 82580 does not reliably do global_device_reset due to hw errata */
	if (hw->mac.type == e1000_82580)
		global_device_reset = FALSE;

	/* Get current control state. */
	ctrl = FUNC2(hw, E1000_CTRL);

	/*
	 * Prevent the PCI-E bus from sticking if there is no TLP connection
	 * on the last TLP read/write transaction when MAC is reset.
	 */
	ret_val = FUNC6(hw);
	if (ret_val)
		FUNC1("PCI-E Master disable polling has failed.\n");

	FUNC1("Masking off all interrupts\n");
	FUNC4(hw, E1000_IMC, 0xffffffff);
	FUNC4(hw, E1000_RCTL, 0);
	FUNC4(hw, E1000_TCTL, E1000_TCTL_PSP);
	FUNC3(hw);

	FUNC9(10);

	/* Determine whether or not a global dev reset is requested */
	if (global_device_reset && hw->mac.ops.acquire_swfw_sync(hw,
	    swmbsw_mask))
			global_device_reset = FALSE;

	if (global_device_reset && !(FUNC2(hw, E1000_STATUS) &
	    E1000_STAT_DEV_RST_SET))
		ctrl |= E1000_CTRL_DEV_RST;
	else
		ctrl |= E1000_CTRL_RST;

	FUNC4(hw, E1000_CTRL, ctrl);

	switch (hw->device_id) {
	case E1000_DEV_ID_DH89XXCC_SGMII:
		break;
	default:
		FUNC3(hw);
		break;
	}

	/* Add delay to insure DEV_RST or RST has time to complete */
	FUNC9(5);

	ret_val = FUNC7(hw);
	if (ret_val) {
		/*
		 * When auto config read does not complete, do not
		 * return with an error. This can happen in situations
		 * where there is no eeprom and prevents getting link.
		 */
		FUNC1("Auto Read Done did not complete\n");
	}

	/* clear global device reset status bit */
	FUNC4(hw, E1000_STATUS, E1000_STAT_DEV_RST_SET);

	/* Clear any pending interrupt events. */
	FUNC4(hw, E1000_IMC, 0xffffffff);
	FUNC2(hw, E1000_ICR);

	ret_val = FUNC8(hw);
	if (ret_val)
		FUNC1("Could not reset MDICNFG based on EEPROM\n");

	/* Install any alternate MAC address into RAR0 */
	ret_val = FUNC5(hw);

	/* Release semaphore */
	if (global_device_reset)
		hw->mac.ops.release_swfw_sync(hw, swmbsw_mask);

	return ret_val;
}