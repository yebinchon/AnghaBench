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
typedef  int /*<<< orphan*/  u32 ;
struct e1000_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  E1000_PHY_CTRL_D0A_LPLU ; 
 int /*<<< orphan*/  E1000_POEMB ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC3(struct e1000_hw *hw, bool active)
{
	u32 data = FUNC1(hw, E1000_POEMB);

	FUNC0("e1000_set_d0_lplu_state_82574");

	if (active)
		data |= E1000_PHY_CTRL_D0A_LPLU;
	else
		data &= ~E1000_PHY_CTRL_D0A_LPLU;

	FUNC2(hw, E1000_POEMB, data);
	return E1000_SUCCESS;
}