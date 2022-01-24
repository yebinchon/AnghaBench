#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ecore_ptt {int dummy; } ;
struct TYPE_6__ {scalar_t__ mode; int /*<<< orphan*/  tc; } ;
struct TYPE_5__ {int /*<<< orphan*/  offload_tc; } ;
struct TYPE_4__ {int /*<<< orphan*/  ooo_tc; } ;
struct ecore_hwfn {TYPE_3__ ufp_info; TYPE_2__ hw_info; TYPE_1__ qm_info; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*) ; 
 int /*<<< orphan*/  ECORE_DCBX_OPERATIONAL_MIB ; 
 int ECORE_INVAL ; 
 int ECORE_SUCCESS ; 
 scalar_t__ ECORE_UFP_MODE_ETS ; 
 scalar_t__ ECORE_UFP_MODE_VNIC_BW ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*) ; 

__attribute__((used)) static enum _ecore_status_t
FUNC5(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt)
{
	FUNC2(p_hwfn, p_ptt);

	if (p_hwfn->ufp_info.mode == ECORE_UFP_MODE_VNIC_BW) {
		p_hwfn->qm_info.ooo_tc = p_hwfn->ufp_info.tc;
		p_hwfn->hw_info.offload_tc = p_hwfn->ufp_info.tc;

		FUNC3(p_hwfn, p_ptt);
	} else if (p_hwfn->ufp_info.mode == ECORE_UFP_MODE_ETS) {
		/* Merge UFP TC with the dcbx TC data */
		FUNC1(p_hwfn, p_ptt,
					    ECORE_DCBX_OPERATIONAL_MIB);
	} else {
		FUNC0(p_hwfn, "Invalid sched type, discard the UFP config\n");
		return ECORE_INVAL;
	}

	/* update storm FW with negotiation results */
	FUNC4(p_hwfn);

	return ECORE_SUCCESS;
}