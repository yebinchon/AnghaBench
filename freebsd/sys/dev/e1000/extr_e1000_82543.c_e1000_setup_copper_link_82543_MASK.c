#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int /*<<< orphan*/  (* config_collision_dist ) (struct e1000_hw*) ;} ;
struct TYPE_8__ {scalar_t__ type; TYPE_3__ ops; scalar_t__ autoneg; } ;
struct TYPE_5__ {scalar_t__ (* reset ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_4__ mac; TYPE_2__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  COPPER_LINK_UP_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_FRCDPX ; 
 int E1000_CTRL_FRCSPD ; 
 int E1000_CTRL_SLU ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ e1000_82543 ; 
 scalar_t__ e1000_82544 ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*) ; 
 scalar_t__ FUNC8 (struct e1000_hw*) ; 
 scalar_t__ FUNC9 (struct e1000_hw*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC10 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC11 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC12(struct e1000_hw *hw)
{
	u32 ctrl;
	s32 ret_val;
	bool link;

	FUNC0("e1000_setup_copper_link_82543");

	ctrl = FUNC2(hw, E1000_CTRL) | E1000_CTRL_SLU;
	/*
	 * With 82543, we need to force speed and duplex on the MAC
	 * equal to what the PHY speed and duplex configuration is.
	 * In addition, we need to perform a hardware reset on the
	 * PHY to take it out of reset.
	 */
	if (hw->mac.type == e1000_82543) {
		ctrl |= (E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
		FUNC3(hw, E1000_CTRL, ctrl);
		ret_val = hw->phy.ops.reset(hw);
		if (ret_val)
			goto out;
	} else {
		ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
		FUNC3(hw, E1000_CTRL, ctrl);
	}

	/* Set MDI/MDI-X, Polarity Reversal, and downshift settings */
	ret_val = FUNC7(hw);
	if (ret_val)
		goto out;

	if (hw->mac.autoneg) {
		/*
		 * Setup autoneg and flow control advertisement and perform
		 * autonegotiation.
		 */
		ret_val = FUNC6(hw);
		if (ret_val)
			goto out;
	} else {
		/*
		 * PHY will be set to 10H, 10F, 100H or 100F
		 * depending on user settings.
		 */
		FUNC1("Forcing Speed and Duplex\n");
		ret_val = FUNC8(hw);
		if (ret_val) {
			FUNC1("Error Forcing Speed and Duplex\n");
			goto out;
		}
	}

	/*
	 * Check link status. Wait up to 100 microseconds for link to become
	 * valid.
	 */
	ret_val = FUNC9(hw, COPPER_LINK_UP_LIMIT, 10,
					     &link);
	if (ret_val)
		goto out;


	if (link) {
		FUNC1("Valid link established!!!\n");
		/* Config the MAC and PHY after link is up */
		if (hw->mac.type == e1000_82544) {
			hw->mac.ops.config_collision_dist(hw);
		} else {
			ret_val = FUNC5(hw);
			if (ret_val)
				goto out;
		}
		ret_val = FUNC4(hw);
	} else {
		FUNC1("Unable to establish link!!!\n");
	}

out:
	return ret_val;
}