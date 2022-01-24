#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_RST ; 
 int /*<<< orphan*/  E1000_EECD ; 
 int E1000_EECD_PRES ; 
 int /*<<< orphan*/  E1000_ICR ; 
 int /*<<< orphan*/  E1000_IMC ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_TCTL ; 
 int E1000_TCTL_PSP ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_hw*) ; 
 scalar_t__ FUNC9 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static s32 FUNC11(struct e1000_hw *hw)
{
	u32 ctrl;
	s32 ret_val;

	FUNC0("e1000_reset_hw_82575");

	/*
	 * Prevent the PCI-E bus from sticking if there is no TLP connection
	 * on the last TLP read/write transaction when MAC is reset.
	 */
	ret_val = FUNC6(hw);
	if (ret_val)
		FUNC1("PCI-E Master disable polling has failed.\n");

	/* set the completion timeout for interface */
	ret_val = FUNC9(hw);
	if (ret_val)
		FUNC1("PCI-E Set completion timeout has failed.\n");

	FUNC1("Masking off all interrupts\n");
	FUNC4(hw, E1000_IMC, 0xffffffff);

	FUNC4(hw, E1000_RCTL, 0);
	FUNC4(hw, E1000_TCTL, E1000_TCTL_PSP);
	FUNC3(hw);

	FUNC10(10);

	ctrl = FUNC2(hw, E1000_CTRL);

	FUNC1("Issuing a global reset to MAC\n");
	FUNC4(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);

	ret_val = FUNC7(hw);
	if (ret_val) {
		/*
		 * When auto config read does not complete, do not
		 * return with an error. This can happen in situations
		 * where there is no eeprom and prevents getting link.
		 */
		FUNC1("Auto Read Done did not complete\n");
	}

	/* If EEPROM is not present, run manual init scripts */
	if (!(FUNC2(hw, E1000_EECD) & E1000_EECD_PRES))
		FUNC8(hw);

	/* Clear any pending interrupt events. */
	FUNC4(hw, E1000_IMC, 0xffffffff);
	FUNC2(hw, E1000_ICR);

	/* Install any alternate MAC address into RAR0 */
	ret_val = FUNC5(hw);

	return ret_val;
}