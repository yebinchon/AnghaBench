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
struct ecore_mcp_link_state {int link_up; } ;
struct ecore_hwfn {TYPE_1__* mcp_info; int /*<<< orphan*/  p_dev; } ;
struct TYPE_2__ {struct ecore_mcp_link_state link_output; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,char*) ; 
 struct ecore_mcp_link_state* OSAL_NULL ; 

struct ecore_mcp_link_state
*FUNC2(struct ecore_hwfn *p_hwfn)
{
	if (!p_hwfn || !p_hwfn->mcp_info)
		return OSAL_NULL;

#ifndef ASIC_ONLY
	if (FUNC0(p_hwfn->p_dev)) {
		FUNC1(p_hwfn, "Non-ASIC - always notify that link is up\n");
		p_hwfn->mcp_info->link_output.link_up = true;
	}
#endif

	return &p_hwfn->mcp_info->link_output;
}