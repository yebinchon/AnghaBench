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
struct TYPE_4__ {scalar_t__ media_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* config_collision_dist ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct e1000_hw {TYPE_1__ phy; TYPE_3__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_LRST ; 
 int E1000_CTRL_SWDPIN1 ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 scalar_t__ e1000_media_type_internal_serdes ; 
 scalar_t__ FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_hw*) ; 

s32 FUNC9(struct e1000_hw *hw)
{
	u32 ctrl;
	s32 ret_val;

	FUNC0("e1000_setup_fiber_serdes_link_generic");

	ctrl = FUNC2(hw, E1000_CTRL);

	/* Take the link out of reset */
	ctrl &= ~E1000_CTRL_LRST;

	hw->mac.ops.config_collision_dist(hw);

	ret_val = FUNC5(hw);
	if (ret_val)
		return ret_val;

	/* Since auto-negotiation is enabled, take the link out of reset (the
	 * link will be in reset, because we previously reset the chip). This
	 * will restart auto-negotiation.  If auto-negotiation is successful
	 * then the link-up status bit will be set and the flow control enable
	 * bits (RFCE and TFCE) will be set according to their negotiated value.
	 */
	FUNC1("Auto-negotiation enabled\n");

	FUNC4(hw, E1000_CTRL, ctrl);
	FUNC3(hw);
	FUNC7(1);

	/* For these adapters, the SW definable pin 1 is set when the optics
	 * detect a signal.  If we have a signal, then poll for a "Link-Up"
	 * indication.
	 */
	if (hw->phy.media_type == e1000_media_type_internal_serdes ||
	    (FUNC2(hw, E1000_CTRL) & E1000_CTRL_SWDPIN1)) {
		ret_val = FUNC6(hw);
	} else {
		FUNC1("No signal detected\n");
	}

	return ret_val;
}