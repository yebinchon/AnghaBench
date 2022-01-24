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
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; scalar_t__ b_int_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  IGU_REG_PF_CONFIGURATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct ecore_hwfn	*p_hwfn,
			       struct ecore_ptt		*p_ptt)
{
	p_hwfn->b_int_enabled = 0;

	if (FUNC0(p_hwfn->p_dev))
		return;

	FUNC1(p_hwfn, p_ptt, IGU_REG_PF_CONFIGURATION, 0);
}