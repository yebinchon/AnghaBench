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
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int /*<<< orphan*/  E1000_CTRL_DUP ; 
 int E1000_CTRL_RST ; 
 int /*<<< orphan*/  E1000_ICR ; 
 int /*<<< orphan*/  E1000_IMC ; 
 int /*<<< orphan*/  E1000_MANC ; 
 int E1000_MANC_ARP_EN ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  E1000_TCTL ; 
 int E1000_TCTL_PSP ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
#define  e1000_82545_rev_3 129 
#define  e1000_82546_rev_3 128 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static s32 FUNC7(struct e1000_hw *hw)
{
	u32 ctrl, manc;
	s32 ret_val = E1000_SUCCESS;

	FUNC0("e1000_reset_hw_82540");

	FUNC1("Masking off all interrupts\n");
	FUNC4(hw, E1000_IMC, 0xFFFFFFFF);

	FUNC4(hw, E1000_RCTL, 0);
	FUNC4(hw, E1000_TCTL, E1000_TCTL_PSP);
	FUNC3(hw);

	/*
	 * Delay to allow any outstanding PCI transactions to complete
	 * before resetting the device.
	 */
	FUNC6(10);

	ctrl = FUNC2(hw, E1000_CTRL);

	FUNC1("Issuing a global reset to 82540/82545/82546 MAC\n");
	switch (hw->mac.type) {
	case e1000_82545_rev_3:
	case e1000_82546_rev_3:
		FUNC4(hw, E1000_CTRL_DUP, ctrl | E1000_CTRL_RST);
		break;
	default:
		/*
		 * These controllers can't ack the 64-bit write when
		 * issuing the reset, so we use IO-mapping as a
		 * workaround to issue the reset.
		 */
		FUNC5(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);
		break;
	}

	/* Wait for EEPROM reload */
	FUNC6(5);

	/* Disable HW ARPs on ASF enabled adapters */
	manc = FUNC2(hw, E1000_MANC);
	manc &= ~E1000_MANC_ARP_EN;
	FUNC4(hw, E1000_MANC, manc);

	FUNC4(hw, E1000_IMC, 0xffffffff);
	FUNC2(hw, E1000_ICR);

	return ret_val;
}