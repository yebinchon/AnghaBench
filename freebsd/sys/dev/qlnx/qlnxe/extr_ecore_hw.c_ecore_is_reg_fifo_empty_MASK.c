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
typedef  int /*<<< orphan*/  u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_1__* p_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  chk_reg_fifo; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GRC_REG_TRACE_FIFO_VALID_DATA ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct ecore_hwfn *p_hwfn,
				    struct ecore_ptt *p_ptt)
{
	bool is_empty = true;
	u32 bar_addr;

	if (!p_hwfn->p_dev->chk_reg_fifo)
		goto out;

	/* ecore_rd() cannot be used here since it calls this function */
	bar_addr = FUNC3(p_hwfn, p_ptt, GRC_REG_TRACE_FIFO_VALID_DATA);
	is_empty = FUNC2(p_hwfn, bar_addr) == 0;

#ifndef ASIC_ONLY
	if (FUNC0(p_hwfn->p_dev))
		FUNC1(100);
#endif

out:
	return is_empty;
}