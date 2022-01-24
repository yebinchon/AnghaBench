#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_4__ {int /*<<< orphan*/  (* setup_link ) (struct e1000_hw*) ;int /*<<< orphan*/  (* clear_vfta ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {scalar_t__ mta_reg_count; scalar_t__ type; TYPE_2__ ops; int /*<<< orphan*/  rar_entry_count; } ;
struct e1000_dev_spec_82543 {scalar_t__ dma_fairness; } ;
struct TYPE_3__ {struct e1000_dev_spec_82543 _82543; } ;
struct e1000_hw {struct e1000_mac_info mac; TYPE_1__ dev_spec; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_PRIOR ; 
 int /*<<< orphan*/  E1000_MTA ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_VET ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ e1000_82543 ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC11(struct e1000_hw *hw)
{
	struct e1000_mac_info *mac = &hw->mac;
	struct e1000_dev_spec_82543 *dev_spec = &hw->dev_spec._82543;
	u32 ctrl;
	s32 ret_val;
	u16 i;

	FUNC0("e1000_init_hw_82543");

	/* Disabling VLAN filtering */
	FUNC4(hw, E1000_VET, 0);
	mac->ops.clear_vfta(hw);

	/* Setup the receive address. */
	FUNC7(hw, mac->rar_entry_count);

	/* Zero out the Multicast HASH table */
	FUNC1("Zeroing the MTA\n");
	for (i = 0; i < mac->mta_reg_count; i++) {
		FUNC5(hw, E1000_MTA, i, 0);
		FUNC3(hw);
	}

	/*
	 * Set the PCI priority bit correctly in the CTRL register.  This
	 * determines if the adapter gives priority to receives, or if it
	 * gives equal priority to transmits and receives.
	 */
	if (hw->mac.type == e1000_82543 && dev_spec->dma_fairness) {
		ctrl = FUNC2(hw, E1000_CTRL);
		FUNC4(hw, E1000_CTRL, ctrl | E1000_CTRL_PRIOR);
	}

	FUNC8(hw);

	/* Setup link and flow control */
	ret_val = mac->ops.setup_link(hw);

	/*
	 * Clear all of the statistics registers (clear on read).  It is
	 * important that we do this after we have tried to establish link
	 * because the symbol error count will increment wildly if there
	 * is no link.
	 */
	FUNC6(hw);

	return ret_val;
}