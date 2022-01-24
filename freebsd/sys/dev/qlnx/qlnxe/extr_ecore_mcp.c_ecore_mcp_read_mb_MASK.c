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
typedef  int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_1__* mcp_info; int /*<<< orphan*/  p_dev; } ;
struct TYPE_2__ {scalar_t__ mfw_mb_cur; scalar_t__ mfw_mb_addr; int /*<<< orphan*/  public_base; int /*<<< orphan*/  mfw_mb_length; } ;
typedef  int /*<<< orphan*/  OSAL_BE32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__) ; 

void FUNC4(struct ecore_hwfn *p_hwfn,
		       struct ecore_ptt *p_ptt)
{
	u32 length = FUNC1(p_hwfn->mcp_info->mfw_mb_length);
	OSAL_BE32 tmp;
	u32 i;

#ifndef ASIC_ONLY
	if (FUNC0(p_hwfn->p_dev))
		return;
#endif

	if (!p_hwfn->mcp_info->public_base)
		return;

	for (i = 0; i < length; i++) {
		tmp = FUNC3(p_hwfn, p_ptt,
			       p_hwfn->mcp_info->mfw_mb_addr +
			       (i << 2) + sizeof(u32));

		((u32 *)p_hwfn->mcp_info->mfw_mb_cur)[i] =
						FUNC2(tmp);
	}
}