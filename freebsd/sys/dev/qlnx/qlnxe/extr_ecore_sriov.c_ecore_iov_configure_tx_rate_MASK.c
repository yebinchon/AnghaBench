#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ecore_vf_info {int /*<<< orphan*/  vport_id; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_mcp_link_state {int /*<<< orphan*/  speed; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {TYPE_1__* mcp_info; } ;
struct TYPE_3__ {struct ecore_mcp_link_state link_output; } ;

/* Variables and functions */
 int ECORE_INVAL ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int ECORE_SUCCESS ; 
 int FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ecore_vf_info* FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ,int) ; 

enum _ecore_status_t FUNC4(struct ecore_hwfn *p_hwfn,
						 struct ecore_ptt *p_ptt,
						 int vfid, int val)
{
	struct ecore_mcp_link_state *p_link;
	struct ecore_vf_info *vf;
	u8 abs_vp_id = 0;
	enum _ecore_status_t rc;

	vf = FUNC3(p_hwfn, (u16)vfid, true);

	if (!vf)
		return ECORE_INVAL;

	rc = FUNC1(p_hwfn, vf->vport_id, &abs_vp_id);
	if (rc != ECORE_SUCCESS)
		return rc;

	p_link = &FUNC0(p_hwfn->p_dev)->mcp_info->link_output;

	return FUNC2(p_hwfn, p_ptt, abs_vp_id, (u32)val,
				   p_link->speed);
}