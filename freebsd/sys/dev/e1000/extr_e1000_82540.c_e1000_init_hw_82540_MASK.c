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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ (* setup_link ) (struct e1000_hw*) ;int /*<<< orphan*/  (* clear_vfta ) (struct e1000_hw*) ;scalar_t__ (* id_led_init ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {scalar_t__ type; scalar_t__ mta_reg_count; TYPE_1__ ops; int /*<<< orphan*/  rar_entry_count; } ;
struct e1000_hw {scalar_t__ device_id; struct e1000_mac_info mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL_EXT ; 
 int E1000_CTRL_EXT_RO_DIS ; 
 scalar_t__ E1000_DEV_ID_82546GB_QUAD_COPPER ; 
 scalar_t__ E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3 ; 
 int /*<<< orphan*/  E1000_MTA ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int E1000_TXDCTL_FULL_TX_DESC_WB ; 
 int E1000_TXDCTL_WTHRESH ; 
 int /*<<< orphan*/  E1000_VET ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ e1000_82545_rev_3 ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct e1000_hw*) ; 
 scalar_t__ FUNC10 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct e1000_hw*) ; 
 scalar_t__ FUNC12 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC13(struct e1000_hw *hw)
{
	struct e1000_mac_info *mac = &hw->mac;
	u32 txdctl, ctrl_ext;
	s32 ret_val;
	u16 i;

	FUNC0("e1000_init_hw_82540");

	/* Initialize identification LED */
	ret_val = mac->ops.id_led_init(hw);
	if (ret_val) {
		FUNC1("Error initializing identification LED\n");
		/* This is not fatal and we should not stop init due to this */
	}

	/* Disabling VLAN filtering */
	FUNC1("Initializing the IEEE VLAN\n");
	if (mac->type < e1000_82545_rev_3)
		FUNC5(hw, E1000_VET, 0);

	mac->ops.clear_vfta(hw);

	/* Setup the receive address. */
	FUNC8(hw, mac->rar_entry_count);

	/* Zero out the Multicast HASH table */
	FUNC1("Zeroing the MTA\n");
	for (i = 0; i < mac->mta_reg_count; i++) {
		FUNC6(hw, E1000_MTA, i, 0);
		/*
		 * Avoid back to back register writes by adding the register
		 * read (flush).  This is to protect against some strange
		 * bridge configurations that may issue Memory Write Block
		 * (MWB) to our register space.  The *_rev_3 hardware at
		 * least doesn't respond correctly to every other dword in an
		 * MWB to our register space.
		 */
		FUNC4(hw);
	}

	if (mac->type < e1000_82545_rev_3)
		FUNC9(hw);

	/* Setup link and flow control */
	ret_val = mac->ops.setup_link(hw);

	txdctl = FUNC2(hw, FUNC3(0));
	txdctl = (txdctl & ~E1000_TXDCTL_WTHRESH) |
		  E1000_TXDCTL_FULL_TX_DESC_WB;
	FUNC5(hw, FUNC3(0), txdctl);

	/*
	 * Clear all of the statistics registers (clear on read).  It is
	 * important that we do this after we have tried to establish link
	 * because the symbol error count will increment wildly if there
	 * is no link.
	 */
	FUNC7(hw);

	if ((hw->device_id == E1000_DEV_ID_82546GB_QUAD_COPPER) ||
	    (hw->device_id == E1000_DEV_ID_82546GB_QUAD_COPPER_KSP3)) {
		ctrl_ext = FUNC2(hw, E1000_CTRL_EXT);
		/*
		 * Relaxed ordering must be disabled to avoid a parity
		 * error crash in a PCI slot.
		 */
		ctrl_ext |= E1000_CTRL_EXT_RO_DIS;
		FUNC5(hw, E1000_CTRL_EXT, ctrl_ext);
	}

	return ret_val;
}