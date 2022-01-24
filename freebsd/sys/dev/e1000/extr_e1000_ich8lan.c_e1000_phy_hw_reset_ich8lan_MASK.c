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
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_FWSM ; 
 int E1000_ICH_FWSM_FW_VALID ; 
 int FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ e1000_pch2lan ; 
 scalar_t__ FUNC3 (struct e1000_hw*) ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC5(struct e1000_hw *hw)
{
	s32 ret_val = E1000_SUCCESS;

	FUNC0("e1000_phy_hw_reset_ich8lan");

	/* Gate automatic PHY configuration by hardware on non-managed 82579 */
	if ((hw->mac.type == e1000_pch2lan) &&
	    !(FUNC1(hw, E1000_FWSM) & E1000_ICH_FWSM_FW_VALID))
		FUNC2(hw, TRUE);

	ret_val = FUNC3(hw);
	if (ret_val)
		return ret_val;

	return FUNC4(hw);
}