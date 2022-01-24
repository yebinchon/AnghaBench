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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  flags; } ;
struct ixgbe_hw {int /*<<< orphan*/  hw_addr; TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IXGBE_CTRL ; 
 int /*<<< orphan*/  IXGBE_CTRL_GIO_DIS ; 
 int /*<<< orphan*/  IXGBE_ERROR_POLLING ; 
 int /*<<< orphan*/  IXGBE_ERR_MASTER_REQUESTS_PENDING ; 
 int /*<<< orphan*/  IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ; 
 int /*<<< orphan*/  IXGBE_PCI_DEVICE_STATUS ; 
 int IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING ; 
 scalar_t__ IXGBE_PCI_MASTER_DISABLE_TIMEOUT ; 
 int FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_STATUS ; 
 int IXGBE_STATUS_GIO ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_X550 ; 
 scalar_t__ FUNC7 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

s32 FUNC9(struct ixgbe_hw *hw)
{
	s32 status = IXGBE_SUCCESS;
	u32 i, poll;
	u16 value;

	FUNC0("ixgbe_disable_pcie_master");

	/* Always set this bit to ensure any future transactions are blocked */
	FUNC6(hw, IXGBE_CTRL, IXGBE_CTRL_GIO_DIS);

	/* Exit if master requests are blocked */
	if (!(FUNC4(hw, IXGBE_STATUS) & IXGBE_STATUS_GIO) ||
	    FUNC5(hw->hw_addr))
		goto out;

	/* Poll for master request bit to clear */
	for (i = 0; i < IXGBE_PCI_MASTER_DISABLE_TIMEOUT; i++) {
		FUNC8(100);
		if (!(FUNC4(hw, IXGBE_STATUS) & IXGBE_STATUS_GIO))
			goto out;
	}

	/*
	 * Two consecutive resets are required via CTRL.RST per datasheet
	 * 5.2.5.3.2 Master Disable.  We set a flag to inform the reset routine
	 * of this need.  The first reset prevents new master requests from
	 * being issued by our device.  We then must wait 1usec or more for any
	 * remaining completions from the PCIe bus to trickle in, and then reset
	 * again to clear out any effects they may have had on our device.
	 */
	FUNC1("GIO Master Disable bit didn't clear - requesting resets\n");
	hw->mac.flags |= IXGBE_FLAGS_DOUBLE_RESET_REQUIRED;

	if (hw->mac.type >= ixgbe_mac_X550)
		goto out;

	/*
	 * Before proceeding, make sure that the PCIe block does not have
	 * transactions pending.
	 */
	poll = FUNC7(hw);
	for (i = 0; i < poll; i++) {
		FUNC8(100);
		value = FUNC3(hw, IXGBE_PCI_DEVICE_STATUS);
		if (FUNC5(hw->hw_addr))
			goto out;
		if (!(value & IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING))
			goto out;
	}

	FUNC2(IXGBE_ERROR_POLLING,
		     "PCIe transaction pending bit also did not clear.\n");
	status = IXGBE_ERR_MASTER_REQUESTS_PENDING;

out:
	return status;
}