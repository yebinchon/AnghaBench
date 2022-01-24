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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_VT_CTL ; 
 int /*<<< orphan*/  E1000_VT_CTL_VM_REPL_EN ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct e1000_hw *hw, bool enable)
{
	u32 vt_ctl = FUNC0(hw, E1000_VT_CTL);

	if (enable)
		vt_ctl |= E1000_VT_CTL_VM_REPL_EN;
	else
		vt_ctl &= ~E1000_VT_CTL_VM_REPL_EN;

	FUNC1(hw, E1000_VT_CTL, vt_ctl);
}