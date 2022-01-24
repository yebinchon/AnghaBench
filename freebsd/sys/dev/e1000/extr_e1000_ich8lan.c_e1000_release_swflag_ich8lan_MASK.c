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
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  E1000_EXTCNF_CTRL ; 
 int E1000_EXTCNF_CTRL_SWFLAG ; 
 int FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct e1000_hw *hw)
{
	u32 extcnf_ctrl;

	FUNC0("e1000_release_swflag_ich8lan");

	extcnf_ctrl = FUNC2(hw, E1000_EXTCNF_CTRL);

	if (extcnf_ctrl & E1000_EXTCNF_CTRL_SWFLAG) {
		extcnf_ctrl &= ~E1000_EXTCNF_CTRL_SWFLAG;
		FUNC3(hw, E1000_EXTCNF_CTRL, extcnf_ctrl);
	} else {
		FUNC1("Semaphore unexpectedly released by sw/fw/hw\n");
	}
}