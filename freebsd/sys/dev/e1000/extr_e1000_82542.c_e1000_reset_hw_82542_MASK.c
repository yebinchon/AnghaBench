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
struct TYPE_3__ {int /*<<< orphan*/  (* reload ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_bus_info {int pci_cmd_word; } ;
struct e1000_hw {scalar_t__ revision_id; TYPE_2__ nvm; struct e1000_bus_info bus; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int CMD_MEM_WRT_INVALIDATE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_RST ; 
 int /*<<< orphan*/  E1000_ICR ; 
 int /*<<< orphan*/  E1000_IMC ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_REVISION_2 ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  E1000_TCTL ; 
 int E1000_TCTL_PSP ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC9(struct e1000_hw *hw)
{
	struct e1000_bus_info *bus = &hw->bus;
	s32 ret_val = E1000_SUCCESS;
	u32 ctrl;

	FUNC0("e1000_reset_hw_82542");

	if (hw->revision_id == E1000_REVISION_2) {
		FUNC1("Disabling MWI on 82542 rev 2\n");
		FUNC5(hw);
	}

	FUNC1("Masking off all interrupts\n");
	FUNC4(hw, E1000_IMC, 0xffffffff);

	FUNC4(hw, E1000_RCTL, 0);
	FUNC4(hw, E1000_TCTL, E1000_TCTL_PSP);
	FUNC3(hw);

	/*
	 * Delay to allow any outstanding PCI transactions to complete before
	 * resetting the device
	 */
	FUNC7(10);

	ctrl = FUNC2(hw, E1000_CTRL);

	FUNC1("Issuing a global reset to 82542/82543 MAC\n");
	FUNC4(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);

	hw->nvm.ops.reload(hw);
	FUNC7(2);

	FUNC4(hw, E1000_IMC, 0xffffffff);
	FUNC2(hw, E1000_ICR);

	if (hw->revision_id == E1000_REVISION_2) {
		if (bus->pci_cmd_word & CMD_MEM_WRT_INVALIDATE)
			FUNC6(hw);
	}

	return ret_val;
}