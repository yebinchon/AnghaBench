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
struct ecore_mcp_link_capabilities {int dummy; } ;
struct ecore_hwfn {TYPE_1__* mcp_info; } ;
struct TYPE_2__ {struct ecore_mcp_link_capabilities link_capabilities; } ;

/* Variables and functions */
 struct ecore_mcp_link_capabilities* OSAL_NULL ; 

struct ecore_mcp_link_capabilities
*FUNC0(struct ecore_hwfn *p_hwfn)
{
	if (!p_hwfn || !p_hwfn->mcp_info)
		return OSAL_NULL;
	return &p_hwfn->mcp_info->link_capabilities;
}