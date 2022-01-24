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
 int E1000_CTRL_PHY_RST ; 
 int E1000_CTRL_RST ; 
 int /*<<< orphan*/  E1000_ICR ; 
 int /*<<< orphan*/  E1000_IMC ; 
 int /*<<< orphan*/  E1000_LEDCTL ; 
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
 int IGP_ACTIVITY_LED_ENABLE ; 
 int IGP_ACTIVITY_LED_MASK ; 
 int IGP_LED3_MODE ; 
#define  e1000_82541 129 
#define  e1000_82541_rev_2 128 
 int e1000_82547 ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static s32 FUNC8(struct e1000_hw *hw)
{
	u32 ledctl, ctrl, manc;

	FUNC0("e1000_reset_hw_82541");

	FUNC1("Masking off all interrupts\n");
	FUNC4(hw, E1000_IMC, 0xFFFFFFFF);

	FUNC4(hw, E1000_RCTL, 0);
	FUNC4(hw, E1000_TCTL, E1000_TCTL_PSP);
	FUNC3(hw);

	/*
	 * Delay to allow any outstanding PCI transactions to complete
	 * before resetting the device.
	 */
	FUNC7(10);

	ctrl = FUNC2(hw, E1000_CTRL);

	/* Must reset the Phy before resetting the MAC */
	if ((hw->mac.type == e1000_82541) || (hw->mac.type == e1000_82547)) {
		FUNC4(hw, E1000_CTRL, (ctrl | E1000_CTRL_PHY_RST));
		FUNC3(hw);
		FUNC7(5);
	}

	FUNC1("Issuing a global reset to 82541/82547 MAC\n");
	switch (hw->mac.type) {
	case e1000_82541:
	case e1000_82541_rev_2:
		/*
		 * These controllers can't ack the 64-bit write when
		 * issuing the reset, so we use IO-mapping as a
		 * workaround to issue the reset.
		 */
		FUNC5(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);
		break;
	default:
		FUNC4(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);
		break;
	}

	/* Wait for NVM reload */
	FUNC7(20);

	/* Disable HW ARPs on ASF enabled adapters */
	manc = FUNC2(hw, E1000_MANC);
	manc &= ~E1000_MANC_ARP_EN;
	FUNC4(hw, E1000_MANC, manc);

	if ((hw->mac.type == e1000_82541) || (hw->mac.type == e1000_82547)) {
		FUNC6(hw);

		/* Configure activity LED after Phy reset */
		ledctl = FUNC2(hw, E1000_LEDCTL);
		ledctl &= IGP_ACTIVITY_LED_MASK;
		ledctl |= (IGP_ACTIVITY_LED_ENABLE | IGP_LED3_MODE);
		FUNC4(hw, E1000_LEDCTL, ledctl);
	}

	/* Once again, mask the interrupts */
	FUNC1("Masking off all interrupts\n");
	FUNC4(hw, E1000_IMC, 0xFFFFFFFF);

	/* Clear any pending interrupt events. */
	FUNC2(hw, E1000_ICR);

	return E1000_SUCCESS;
}