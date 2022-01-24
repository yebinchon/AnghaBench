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
struct TYPE_2__ {int forced_speed_duplex; int /*<<< orphan*/  autoneg; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int E1000_ALL_10_SPEED ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC3(struct e1000_hw *hw)
{
	s32 ret_val;

	FUNC0("e1000_phy_force_speed_duplex_82543");

	ret_val = FUNC1(hw);
	if (ret_val)
		goto out;

	if (!hw->mac.autoneg && (hw->mac.forced_speed_duplex &
	    E1000_ALL_10_SPEED))
		ret_val = FUNC2(hw);

out:
	return ret_val;
}