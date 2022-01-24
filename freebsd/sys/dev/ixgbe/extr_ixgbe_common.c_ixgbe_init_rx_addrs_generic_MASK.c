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
struct TYPE_4__ {int /*<<< orphan*/  (* clear_vmdq ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_rar ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* get_mac_addr ) (struct ixgbe_hw*,int /*<<< orphan*/ *) ;} ;
struct TYPE_6__ {int num_rar_entries; int mcft_size; int /*<<< orphan*/  mc_filter_type; TYPE_1__ ops; int /*<<< orphan*/ * addr; } ;
struct TYPE_5__ {int rar_used_count; scalar_t__ mta_in_use; scalar_t__ overflow_promisc; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_2__ addr_ctrl; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_CLEAR_VMDQ_ALL ; 
 scalar_t__ IXGBE_ERR_INVALID_MAC_ADDR ; 
 int /*<<< orphan*/  IXGBE_MCSTCTRL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  IXGBE_RAH_AV ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  IXGBE_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

s32 FUNC13(struct ixgbe_hw *hw)
{
	u32 i;
	u32 rar_entries = hw->mac.num_rar_entries;

	FUNC0("ixgbe_init_rx_addrs_generic");

	/*
	 * If the current mac address is valid, assume it is a software override
	 * to the permanent address.
	 * Otherwise, use the permanent address from the eeprom.
	 */
	if (FUNC9(hw->mac.addr) ==
	    IXGBE_ERR_INVALID_MAC_ADDR) {
		/* Get the MAC address from the RAR0 for later reference */
		hw->mac.ops.get_mac_addr(hw, hw->mac.addr);

		FUNC3(" Keeping Current RAR0 Addr =%.2X %.2X %.2X ",
			  hw->mac.addr[0], hw->mac.addr[1],
			  hw->mac.addr[2]);
		FUNC3("%.2X %.2X %.2X\n", hw->mac.addr[3],
			  hw->mac.addr[4], hw->mac.addr[5]);
	} else {
		/* Setup the receive address. */
		FUNC1("Overriding MAC Address in RAR[0]\n");
		FUNC3(" New MAC Addr =%.2X %.2X %.2X ",
			  hw->mac.addr[0], hw->mac.addr[1],
			  hw->mac.addr[2]);
		FUNC3("%.2X %.2X %.2X\n", hw->mac.addr[3],
			  hw->mac.addr[4], hw->mac.addr[5]);

		hw->mac.ops.set_rar(hw, 0, hw->mac.addr, 0, IXGBE_RAH_AV);
	}

	/* clear VMDq pool/queue selection for RAR 0 */
	hw->mac.ops.clear_vmdq(hw, 0, IXGBE_CLEAR_VMDQ_ALL);

	hw->addr_ctrl.overflow_promisc = 0;

	hw->addr_ctrl.rar_used_count = 1;

	/* Zero out the other receive addresses. */
	FUNC2("Clearing RAR[1-%d]\n", rar_entries - 1);
	for (i = 1; i < rar_entries; i++) {
		FUNC7(hw, FUNC6(i), 0);
		FUNC7(hw, FUNC5(i), 0);
	}

	/* Clear the MTA */
	hw->addr_ctrl.mta_in_use = 0;
	FUNC7(hw, IXGBE_MCSTCTRL, hw->mac.mc_filter_type);

	FUNC1(" Clearing MTA\n");
	for (i = 0; i < hw->mac.mcft_size; i++)
		FUNC7(hw, FUNC4(i), 0);

	FUNC8(hw);

	return IXGBE_SUCCESS;
}