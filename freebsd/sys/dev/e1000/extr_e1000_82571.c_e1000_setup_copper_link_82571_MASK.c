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
struct e1000_hw {TYPE_1__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_FRCDPX ; 
 int E1000_CTRL_FRCSPD ; 
 int E1000_CTRL_SLU ; 
 scalar_t__ E1000_ERR_PHY ; 
 int FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct e1000_hw*) ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
#define  e1000_phy_bm 130 
#define  e1000_phy_igp_2 129 
#define  e1000_phy_m88 128 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC6(struct e1000_hw *hw)
{
	u32 ctrl;
	s32 ret_val;

	FUNC0("e1000_setup_copper_link_82571");

	ctrl = FUNC1(hw, E1000_CTRL);
	ctrl |= E1000_CTRL_SLU;
	ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
	FUNC2(hw, E1000_CTRL, ctrl);

	switch (hw->phy.type) {
	case e1000_phy_m88:
	case e1000_phy_bm:
		ret_val = FUNC4(hw);
		break;
	case e1000_phy_igp_2:
		ret_val = FUNC3(hw);
		break;
	default:
		return -E1000_ERR_PHY;
		break;
	}

	if (ret_val)
		return ret_val;

	return FUNC5(hw);
}