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
struct ecore_hwfn {int /*<<< orphan*/  p_dpc_ptt; int /*<<< orphan*/  p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,char*) ; 
 int ECORE_INVAL ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  TM_REG_INT_MASK_1 ; 
 int TM_REG_INT_MASK_1_PEND_CONN_SCAN ; 
 int TM_REG_INT_MASK_1_PEND_TASK_SCAN ; 
 int /*<<< orphan*/  TM_REG_INT_STS_1 ; 
 int TM_REG_INT_STS_1_PEND_CONN_SCAN ; 
 int TM_REG_INT_STS_1_PEND_TASK_SCAN ; 
 int FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum _ecore_status_t FUNC4(struct ecore_hwfn *p_hwfn)
{
#ifndef ASIC_ONLY
	if (FUNC0(p_hwfn->p_dev)) {
		u32 val = FUNC2(p_hwfn, p_hwfn->p_dpc_ptt,
				   TM_REG_INT_STS_1);

		if (val & ~(TM_REG_INT_STS_1_PEND_TASK_SCAN |
			    TM_REG_INT_STS_1_PEND_CONN_SCAN))
			return ECORE_INVAL;

		if (val & (TM_REG_INT_STS_1_PEND_TASK_SCAN |
			   TM_REG_INT_STS_1_PEND_CONN_SCAN))
			FUNC1(p_hwfn, "TM attention on emulation - most likely results of clock-ratios\n");
		val = FUNC2(p_hwfn, p_hwfn->p_dpc_ptt, TM_REG_INT_MASK_1);
		val |= TM_REG_INT_MASK_1_PEND_CONN_SCAN |
		       TM_REG_INT_MASK_1_PEND_TASK_SCAN;
		FUNC3(p_hwfn, p_hwfn->p_dpc_ptt, TM_REG_INT_MASK_1, val);

		return ECORE_SUCCESS;
	}
#endif

	return ECORE_INVAL;
}