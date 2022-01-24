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
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int abs_pf_id; TYPE_1__* p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int /*<<< orphan*/  mf_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  ECORE_MF_NEED_DEF_PF ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  NIG_REG_LLH_TAGMAC_DEF_PF_VECTOR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PRS_REG_MSG_INFO ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int) ; 

enum _ecore_status_t
FUNC3(struct ecore_hwfn *p_hwfn,
				  struct ecore_ptt *p_ptt)
{
	if (FUNC1(ECORE_MF_NEED_DEF_PF, &p_hwfn->p_dev->mf_bits)) {
		FUNC2(p_hwfn, p_ptt,
			 NIG_REG_LLH_TAGMAC_DEF_PF_VECTOR,
			 1 << p_hwfn->abs_pf_id / 2);
		FUNC2(p_hwfn, p_ptt, PRS_REG_MSG_INFO, 0);
		return ECORE_SUCCESS;
	} else {
		FUNC0(p_hwfn, false,
			  "This function can't be set as default\n");
		return ECORE_INVAL;
	}
}