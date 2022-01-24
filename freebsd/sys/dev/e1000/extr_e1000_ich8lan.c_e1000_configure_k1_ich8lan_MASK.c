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
typedef  int /*<<< orphan*/  u16 ;
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_CTRL ; 
 int /*<<< orphan*/  E1000_CTRL_EXT ; 
 int E1000_CTRL_EXT_SPD_BYPS ; 
 int E1000_CTRL_FRCSPD ; 
 int E1000_CTRL_SPD_100 ; 
 int E1000_CTRL_SPD_1000 ; 
 int /*<<< orphan*/  E1000_KMRNCTRLSTA_K1_CONFIG ; 
 int /*<<< orphan*/  E1000_KMRNCTRLSTA_K1_ENABLE ; 
 int FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

s32 FUNC7(struct e1000_hw *hw, bool k1_enable)
{
	s32 ret_val;
	u32 ctrl_reg = 0;
	u32 ctrl_ext = 0;
	u32 reg = 0;
	u16 kmrn_reg = 0;

	FUNC0("e1000_configure_k1_ich8lan");

	ret_val = FUNC4(hw, E1000_KMRNCTRLSTA_K1_CONFIG,
					     &kmrn_reg);
	if (ret_val)
		return ret_val;

	if (k1_enable)
		kmrn_reg |= E1000_KMRNCTRLSTA_K1_ENABLE;
	else
		kmrn_reg &= ~E1000_KMRNCTRLSTA_K1_ENABLE;

	ret_val = FUNC5(hw, E1000_KMRNCTRLSTA_K1_CONFIG,
					      kmrn_reg);
	if (ret_val)
		return ret_val;

	FUNC6(20);
	ctrl_ext = FUNC1(hw, E1000_CTRL_EXT);
	ctrl_reg = FUNC1(hw, E1000_CTRL);

	reg = ctrl_reg & ~(E1000_CTRL_SPD_1000 | E1000_CTRL_SPD_100);
	reg |= E1000_CTRL_FRCSPD;
	FUNC3(hw, E1000_CTRL, reg);

	FUNC3(hw, E1000_CTRL_EXT, ctrl_ext | E1000_CTRL_EXT_SPD_BYPS);
	FUNC2(hw);
	FUNC6(20);
	FUNC3(hw, E1000_CTRL, ctrl_reg);
	FUNC3(hw, E1000_CTRL_EXT, ctrl_ext);
	FUNC2(hw);
	FUNC6(20);

	return E1000_SUCCESS;
}