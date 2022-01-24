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
struct TYPE_2__ {scalar_t__ (* get_cfg_done ) (struct e1000_hw*) ;int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;scalar_t__ (* check_reset_block ) (struct e1000_hw*) ;} ;
struct e1000_phy_info {int reset_delay_us; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_PHY_RST ; 
 int FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

s32 FUNC9(struct e1000_hw *hw)
{
	struct e1000_phy_info *phy = &hw->phy;
	s32 ret_val;
	u32 ctrl;

	FUNC0("e1000_phy_hw_reset_generic");

	if (phy->ops.check_reset_block) {
		ret_val = phy->ops.check_reset_block(hw);
		if (ret_val)
			return E1000_SUCCESS;
	}

	ret_val = phy->ops.acquire(hw);
	if (ret_val)
		return ret_val;

	ctrl = FUNC1(hw, E1000_CTRL);
	FUNC3(hw, E1000_CTRL, ctrl | E1000_CTRL_PHY_RST);
	FUNC2(hw);

	FUNC8(phy->reset_delay_us);

	FUNC3(hw, E1000_CTRL, ctrl);
	FUNC2(hw);

	FUNC8(150);

	phy->ops.release(hw);

	return phy->ops.get_cfg_done(hw);
}