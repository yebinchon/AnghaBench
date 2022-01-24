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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {struct ecore_bulletin_content* p_virt; } ;
struct ecore_vf_info {TYPE_1__ bulletin; } ;
struct ecore_mcp_link_state {int dummy; } ;
struct ecore_mcp_link_params {int dummy; } ;
struct ecore_mcp_link_capabilities {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_bulletin_content {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_mcp_link_capabilities*,struct ecore_bulletin_content*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_mcp_link_params*,struct ecore_bulletin_content*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_mcp_link_state*,struct ecore_bulletin_content*) ; 
 struct ecore_vf_info* FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct ecore_hwfn *p_hwfn,
			u16 vfid,
			struct ecore_mcp_link_params *p_params,
			struct ecore_mcp_link_state *p_link,
			struct ecore_mcp_link_capabilities *p_caps)
{
	struct ecore_vf_info *p_vf = FUNC3(p_hwfn, vfid, false);
	struct ecore_bulletin_content *p_bulletin;

	if (!p_vf)
		return;

	p_bulletin = p_vf->bulletin.p_virt;

	if (p_params)
		FUNC1(p_params, p_bulletin);
	if (p_link)
		FUNC2(p_link, p_bulletin);
	if (p_caps)
		FUNC0(p_caps, p_bulletin);
}