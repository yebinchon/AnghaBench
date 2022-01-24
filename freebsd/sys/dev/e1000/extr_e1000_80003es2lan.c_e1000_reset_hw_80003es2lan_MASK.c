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
typedef  int /*<<< orphan*/  u16 ;
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_RST ; 
 int /*<<< orphan*/  E1000_ICR ; 
 int /*<<< orphan*/  E1000_IMC ; 
 int /*<<< orphan*/  E1000_KMRNCTRLSTA_IBIST_DISABLE ; 
 int /*<<< orphan*/  E1000_KMRNCTRLSTA_INBAND_PARAM ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_TCTL ; 
 int E1000_TCTL_PSP ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*) ; 
 scalar_t__ FUNC8 (struct e1000_hw*) ; 
 scalar_t__ FUNC9 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct e1000_hw*) ; 
 scalar_t__ FUNC11 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static s32 FUNC13(struct e1000_hw *hw)
{
	u32 ctrl;
	s32 ret_val;
	u16 kum_reg_data;

	FUNC0("e1000_reset_hw_80003es2lan");

	/* Prevent the PCI-E bus from sticking if there is no TLP connection
	 * on the last TLP read/write transaction when MAC is reset.
	 */
	ret_val = FUNC7(hw);
	if (ret_val)
		FUNC1("PCI-E Master disable polling has failed.\n");

	FUNC1("Masking off all interrupts\n");
	FUNC4(hw, E1000_IMC, 0xffffffff);

	FUNC4(hw, E1000_RCTL, 0);
	FUNC4(hw, E1000_TCTL, E1000_TCTL_PSP);
	FUNC3(hw);

	FUNC12(10);

	ctrl = FUNC2(hw, E1000_CTRL);

	ret_val = FUNC5(hw);
	if (ret_val)
		return ret_val;

	FUNC1("Issuing a global reset to MAC\n");
	FUNC4(hw, E1000_CTRL, ctrl | E1000_CTRL_RST);
	FUNC10(hw);

	/* Disable IBIST slave mode (far-end loopback) */
	ret_val = FUNC9(hw,
				E1000_KMRNCTRLSTA_INBAND_PARAM, &kum_reg_data);
	if (!ret_val) {
		kum_reg_data |= E1000_KMRNCTRLSTA_IBIST_DISABLE;
		ret_val = FUNC11(hw,
						 E1000_KMRNCTRLSTA_INBAND_PARAM,
						 kum_reg_data);
		if (ret_val)
			FUNC1("Error disabling far-end loopback\n");
	} else
		FUNC1("Error disabling far-end loopback\n");

	ret_val = FUNC8(hw);
	if (ret_val)
		/* We don't want to continue accessing MAC registers. */
		return ret_val;

	/* Clear any pending interrupt events. */
	FUNC4(hw, E1000_IMC, 0xffffffff);
	FUNC2(hw, E1000_ICR);

	return FUNC6(hw);
}