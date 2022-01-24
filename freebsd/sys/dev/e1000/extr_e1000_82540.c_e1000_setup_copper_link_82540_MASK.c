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
typedef  int u16 ;
struct TYPE_5__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int /*<<< orphan*/ ,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int /*<<< orphan*/ ,int*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_FRCDPX ; 
 int E1000_CTRL_FRCSPD ; 
 int E1000_CTRL_SLU ; 
 int FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  M88E1000_PHY_SPEC_CTRL ; 
 scalar_t__ e1000_82545_rev_3 ; 
 scalar_t__ e1000_82546_rev_3 ; 
 scalar_t__ FUNC3 (struct e1000_hw*) ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC8(struct e1000_hw *hw)
{
	u32 ctrl;
	s32 ret_val;
	u16 data;

	FUNC0("e1000_setup_copper_link_82540");

	ctrl = FUNC1(hw, E1000_CTRL);
	ctrl |= E1000_CTRL_SLU;
	ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
	FUNC2(hw, E1000_CTRL, ctrl);

	ret_val = FUNC4(hw);
	if (ret_val)
		goto out;

	if (hw->mac.type == e1000_82545_rev_3 ||
	    hw->mac.type == e1000_82546_rev_3) {
		ret_val = hw->phy.ops.read_reg(hw, M88E1000_PHY_SPEC_CTRL,
					       &data);
		if (ret_val)
			goto out;
		data |= 0x00000008;
		ret_val = hw->phy.ops.write_reg(hw, M88E1000_PHY_SPEC_CTRL,
						data);
		if (ret_val)
			goto out;
	}

	ret_val = FUNC3(hw);
	if (ret_val)
		goto out;

	ret_val = FUNC5(hw);

out:
	return ret_val;
}