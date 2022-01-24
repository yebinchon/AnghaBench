#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {scalar_t__ (* stop_adapter ) (struct ixgbe_hw*) ;scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int) ;int /*<<< orphan*/  (* get_wwn_prefix ) (struct ixgbe_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* clear_vmdq ) (struct ixgbe_hw*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_rar ) (struct ixgbe_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* get_san_mac_addr ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* init_rx_addrs ) (struct ixgbe_hw*) ;int /*<<< orphan*/  (* get_mac_addr ) (struct ixgbe_hw*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* release_swfw_sync ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_6__ {int flags; int num_rar_entries; int san_mac_rar_index; int /*<<< orphan*/  wwpn_prefix; int /*<<< orphan*/  wwnn_prefix; TYPE_2__ ops; int /*<<< orphan*/  san_addr; int /*<<< orphan*/  perm_addr; } ;
struct TYPE_4__ {int phy_semaphore_mask; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  IXGBE_CLEAR_VMDQ_ALL ; 
 int /*<<< orphan*/  IXGBE_CTRL ; 
 int IXGBE_CTRL_RST ; 
 int IXGBE_CTRL_RST_MASK ; 
 int /*<<< orphan*/  IXGBE_ERROR_CAUTION ; 
 int /*<<< orphan*/  IXGBE_ERROR_POLLING ; 
 scalar_t__ IXGBE_ERR_RESET_FAILED ; 
 scalar_t__ IXGBE_ERR_SWFW_SYNC ; 
 int IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ; 
 int /*<<< orphan*/  IXGBE_RAH_AV ; 
 int FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int IXGBE_RXPBSIZE_SHIFT ; 
 scalar_t__ IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC11 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC15 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ixgbe_hw*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ixgbe_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ixgbe_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

s32 FUNC20(struct ixgbe_hw *hw)
{
	s32 status;
	u32 ctrl, i;
	u32 swfw_mask = hw->phy.phy_semaphore_mask;

	FUNC0("ixgbe_reset_hw_X540");

	/* Call adapter stop to disable tx/rx and clear interrupts */
	status = hw->mac.ops.stop_adapter(hw);
	if (status != IXGBE_SUCCESS)
		goto reset_hw_out;

	/* flush pending Tx transactions */
	FUNC7(hw);

mac_reset_top:
	status = hw->mac.ops.acquire_swfw_sync(hw, swfw_mask);
	if (status != IXGBE_SUCCESS) {
		FUNC2(IXGBE_ERROR_CAUTION,
			"semaphore failed with %d", status);
		return IXGBE_ERR_SWFW_SYNC;
	}
	ctrl = IXGBE_CTRL_RST;
	ctrl |= FUNC3(hw, IXGBE_CTRL);
	FUNC6(hw, IXGBE_CTRL, ctrl);
	FUNC5(hw);
	hw->mac.ops.release_swfw_sync(hw, swfw_mask);

	/* Poll for reset bit to self-clear indicating reset is complete */
	for (i = 0; i < 10; i++) {
		FUNC19(1);
		ctrl = FUNC3(hw, IXGBE_CTRL);
		if (!(ctrl & IXGBE_CTRL_RST_MASK))
			break;
	}

	if (ctrl & IXGBE_CTRL_RST_MASK) {
		status = IXGBE_ERR_RESET_FAILED;
		FUNC1(IXGBE_ERROR_POLLING,
			     "Reset polling failed to complete.\n");
	}
	FUNC9(100);

	/*
	 * Double resets are required for recovery from certain error
	 * conditions.  Between resets, it is necessary to stall to allow time
	 * for any pending HW events to complete.
	 */
	if (hw->mac.flags & IXGBE_FLAGS_DOUBLE_RESET_REQUIRED) {
		hw->mac.flags &= ~IXGBE_FLAGS_DOUBLE_RESET_REQUIRED;
		goto mac_reset_top;
	}

	/* Set the Rx packet buffer size. */
	FUNC6(hw, FUNC4(0), 384 << IXGBE_RXPBSIZE_SHIFT);

	/* Store the permanent mac address */
	hw->mac.ops.get_mac_addr(hw, hw->mac.perm_addr);

	/*
	 * Store MAC address from RAR0, clear receive address registers, and
	 * clear the multicast table.  Also reset num_rar_entries to 128,
	 * since we modify this value when programming the SAN MAC address.
	 */
	hw->mac.num_rar_entries = 128;
	hw->mac.ops.init_rx_addrs(hw);

	/* Store the permanent SAN mac address */
	hw->mac.ops.get_san_mac_addr(hw, hw->mac.san_addr);

	/* Add the SAN MAC address to the RAR only if it's a valid address */
	if (FUNC8(hw->mac.san_addr) == 0) {
		/* Save the SAN MAC RAR index */
		hw->mac.san_mac_rar_index = hw->mac.num_rar_entries - 1;

		hw->mac.ops.set_rar(hw, hw->mac.san_mac_rar_index,
				    hw->mac.san_addr, 0, IXGBE_RAH_AV);

		/* clear VMDq pool/queue selection for this RAR */
		hw->mac.ops.clear_vmdq(hw, hw->mac.san_mac_rar_index,
				       IXGBE_CLEAR_VMDQ_ALL);

		/* Reserve the last RAR for the SAN MAC address */
		hw->mac.num_rar_entries--;
	}

	/* Store the alternative WWNN/WWPN prefix */
	hw->mac.ops.get_wwn_prefix(hw, &hw->mac.wwnn_prefix,
				   &hw->mac.wwpn_prefix);

reset_hw_out:
	return status;
}