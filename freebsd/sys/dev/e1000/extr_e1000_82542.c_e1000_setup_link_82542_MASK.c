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
struct TYPE_3__ {scalar_t__ (* setup_physical_interface ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {TYPE_1__ ops; scalar_t__ report_tx_early; } ;
struct TYPE_4__ {int /*<<< orphan*/  pause_time; int /*<<< orphan*/  current_mode; int /*<<< orphan*/  requested_mode; } ;
struct e1000_hw {TYPE_2__ fc; struct e1000_mac_info mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_FCAH ; 
 int /*<<< orphan*/  E1000_FCAL ; 
 int /*<<< orphan*/  E1000_FCT ; 
 int /*<<< orphan*/  E1000_FCTTV ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLOW_CONTROL_ADDRESS_HIGH ; 
 int /*<<< orphan*/  FLOW_CONTROL_ADDRESS_LOW ; 
 int /*<<< orphan*/  FLOW_CONTROL_TYPE ; 
 int /*<<< orphan*/  e1000_fc_rx_pause ; 
 int /*<<< orphan*/  e1000_fc_tx_pause ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC7(struct e1000_hw *hw)
{
	struct e1000_mac_info *mac = &hw->mac;
	s32 ret_val;

	FUNC0("e1000_setup_link_82542");

	ret_val = FUNC4(hw);
	if (ret_val)
		goto out;

	hw->fc.requested_mode &= ~e1000_fc_tx_pause;

	if (mac->report_tx_early)
		hw->fc.requested_mode &= ~e1000_fc_rx_pause;

	/*
	 * Save off the requested flow control mode for use later.  Depending
	 * on the link partner's capabilities, we may or may not use this mode.
	 */
	hw->fc.current_mode = hw->fc.requested_mode;

	FUNC2("After fix-ups FlowControl is now = %x\n",
		  hw->fc.current_mode);

	/* Call the necessary subroutine to configure the link. */
	ret_val = mac->ops.setup_physical_interface(hw);
	if (ret_val)
		goto out;

	/*
	 * Initialize the flow control address, type, and PAUSE timer
	 * registers to their default values.  This is done even if flow
	 * control is disabled, because it does not hurt anything to
	 * initialize these registers.
	 */
	FUNC1("Initializing Flow Control address, type and timer regs\n");

	FUNC3(hw, E1000_FCAL, FLOW_CONTROL_ADDRESS_LOW);
	FUNC3(hw, E1000_FCAH, FLOW_CONTROL_ADDRESS_HIGH);
	FUNC3(hw, E1000_FCT, FLOW_CONTROL_TYPE);

	FUNC3(hw, E1000_FCTTV, hw->fc.pause_time);

	ret_val = FUNC5(hw);

out:
	return ret_val;
}