#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int E1000_CTRL_FRCDPX ; 
 int E1000_CTRL_FRCSPD ; 
 int E1000_CTRL_SLU ; 
 int E1000_KMRNCTRLSTA_INB_CTRL_DIS_PADDING ; 
 int /*<<< orphan*/  E1000_KMRNCTRLSTA_OFFSET_INB_CTRL ; 
 int FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 scalar_t__ FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (struct e1000_hw*) ; 
 scalar_t__ FUNC7 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC8(struct e1000_hw *hw)
{
	u32 ctrl;
	s32 ret_val;
	u16 reg_data;

	FUNC0("e1000_setup_copper_link_80003es2lan");

	ctrl = FUNC1(hw, E1000_CTRL);
	ctrl |= E1000_CTRL_SLU;
	ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
	FUNC2(hw, E1000_CTRL, ctrl);

	/* Set the mac to wait the maximum time between each
	 * iteration and increase the max iterations when
	 * polling the phy; this fixes erroneous timeouts at 10Mbps.
	 */
	ret_val = FUNC7(hw, FUNC3(0x34, 4),
						   0xFFFF);
	if (ret_val)
		return ret_val;
	ret_val = FUNC5(hw, FUNC3(0x34, 9),
						  &reg_data);
	if (ret_val)
		return ret_val;
	reg_data |= 0x3F;
	ret_val = FUNC7(hw, FUNC3(0x34, 9),
						   reg_data);
	if (ret_val)
		return ret_val;
	ret_val =
	    FUNC5(hw,
					    E1000_KMRNCTRLSTA_OFFSET_INB_CTRL,
					    &reg_data);
	if (ret_val)
		return ret_val;
	reg_data |= E1000_KMRNCTRLSTA_INB_CTRL_DIS_PADDING;
	ret_val =
	    FUNC7(hw,
					     E1000_KMRNCTRLSTA_OFFSET_INB_CTRL,
					     reg_data);
	if (ret_val)
		return ret_val;

	ret_val = FUNC4(hw);
	if (ret_val)
		return ret_val;

	return FUNC6(hw);
}