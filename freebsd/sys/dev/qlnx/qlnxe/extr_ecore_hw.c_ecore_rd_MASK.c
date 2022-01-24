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
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECORE_MSG_HW ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 

u32 FUNC7(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt, u32 hw_addr)
{
	bool prev_fifo_err;
	u32 bar_addr, val;

	prev_fifo_err = !FUNC5(p_hwfn, p_ptt);

	bar_addr = FUNC6(p_hwfn, p_ptt, hw_addr);
	val = FUNC4(p_hwfn, bar_addr);

	FUNC1(p_hwfn, ECORE_MSG_HW,
		   "bar_addr 0x%x, hw_addr 0x%x, val 0x%x\n",
		   bar_addr, hw_addr, val);

#ifndef ASIC_ONLY
	if (FUNC0(p_hwfn->p_dev))
		FUNC2(100);
#endif

	FUNC3(!prev_fifo_err && !FUNC5(p_hwfn, p_ptt),
		  "reg_fifo error was caused by a call to ecore_rd(0x%x)\n",
		  hw_addr);

	return val;
}