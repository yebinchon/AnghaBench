#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ requested_mode; scalar_t__ current_mode; int /*<<< orphan*/  pause_time; } ;
struct TYPE_8__ {scalar_t__ (* setup_physical_interface ) (struct e1000_hw*) ;} ;
struct TYPE_9__ {TYPE_3__ ops; } ;
struct TYPE_6__ {scalar_t__ (* check_reset_block ) (struct e1000_hw*) ;} ;
struct TYPE_7__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_5__ fc; TYPE_4__ mac; TYPE_2__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  E1000_FCAH ; 
 int /*<<< orphan*/  E1000_FCAL ; 
 int /*<<< orphan*/  E1000_FCT ; 
 int /*<<< orphan*/  E1000_FCTTV ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLOW_CONTROL_ADDRESS_HIGH ; 
 int /*<<< orphan*/  FLOW_CONTROL_ADDRESS_LOW ; 
 int /*<<< orphan*/  FLOW_CONTROL_TYPE ; 
 scalar_t__ e1000_fc_default ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*) ; 

s32 FUNC8(struct e1000_hw *hw)
{
	s32 ret_val;

	FUNC0("e1000_setup_link_generic");

	/* In the case of the phy reset being blocked, we already have a link.
	 * We do not need to set it up again.
	 */
	if (hw->phy.ops.check_reset_block && hw->phy.ops.check_reset_block(hw))
		return E1000_SUCCESS;

	/* If requested flow control is set to default, set flow control
	 * based on the EEPROM flow control settings.
	 */
	if (hw->fc.requested_mode == e1000_fc_default) {
		ret_val = FUNC4(hw);
		if (ret_val)
			return ret_val;
	}

	/* Save off the requested flow control mode for use later.  Depending
	 * on the link partner's capabilities, we may or may not use this mode.
	 */
	hw->fc.current_mode = hw->fc.requested_mode;

	FUNC2("After fix-ups FlowControl is now = %x\n",
		hw->fc.current_mode);

	/* Call the necessary media_type subroutine to configure the link. */
	ret_val = hw->mac.ops.setup_physical_interface(hw);
	if (ret_val)
		return ret_val;

	/* Initialize the flow control address, type, and PAUSE timer
	 * registers to their default values.  This is done even if flow
	 * control is disabled, because it does not hurt anything to
	 * initialize these registers.
	 */
	FUNC1("Initializing the Flow Control address, type and timer regs\n");
	FUNC3(hw, E1000_FCT, FLOW_CONTROL_TYPE);
	FUNC3(hw, E1000_FCAH, FLOW_CONTROL_ADDRESS_HIGH);
	FUNC3(hw, E1000_FCAL, FLOW_CONTROL_ADDRESS_LOW);

	FUNC3(hw, E1000_FCTTV, hw->fc.pause_time);

	return FUNC5(hw);
}