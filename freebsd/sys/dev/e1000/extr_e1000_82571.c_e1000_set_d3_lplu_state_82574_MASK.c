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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ autoneg_advertised; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ E1000_ALL_10_SPEED ; 
 scalar_t__ E1000_ALL_NOT_GIG ; 
 scalar_t__ E1000_ALL_SPEED_DUPLEX ; 
 int /*<<< orphan*/  E1000_PHY_CTRL_NOND0A_LPLU ; 
 int /*<<< orphan*/  E1000_POEMB ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC3(struct e1000_hw *hw, bool active)
{
	u32 data = FUNC1(hw, E1000_POEMB);

	FUNC0("e1000_set_d3_lplu_state_82574");

	if (!active) {
		data &= ~E1000_PHY_CTRL_NOND0A_LPLU;
	} else if ((hw->phy.autoneg_advertised == E1000_ALL_SPEED_DUPLEX) ||
		   (hw->phy.autoneg_advertised == E1000_ALL_NOT_GIG) ||
		   (hw->phy.autoneg_advertised == E1000_ALL_10_SPEED)) {
		data |= E1000_PHY_CTRL_NOND0A_LPLU;
	}

	FUNC2(hw, E1000_POEMB, data);
	return E1000_SUCCESS;
}