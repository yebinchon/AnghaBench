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
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int b_rdma_enabled_in_prs; int /*<<< orphan*/  p_dev; int /*<<< orphan*/  rdma_prs_search_reg; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int ECORE_SUCCESS ; 
 int ECORE_UNKNOWN_ERROR ; 
 scalar_t__ FUNC4 (struct ecore_hwfn*) ; 
 scalar_t__ NIG_REG_LLH_ENG_CLS_ENG_ID_TBL ; 
 int /*<<< orphan*/  PROTOCOLID_ROCE ; 
 scalar_t__ PRS_REG_LIGHT_L2_ETHERTYPE_EN ; 
 scalar_t__ PRS_REG_ROCE_DEST_QP_MAX_PF ; 
 int /*<<< orphan*/  PRS_REG_SEARCH_ROCE ; 
 int FUNC5 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC7 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int) ; 

__attribute__((used)) static enum _ecore_status_t FUNC9(
	struct ecore_hwfn *p_hwfn,
	struct ecore_ptt *p_ptt)
{
	u32 ll2_ethertype_en;

	FUNC1(p_hwfn, ECORE_MSG_RDMA, "Initializing HW\n");
	p_hwfn->b_rdma_enabled_in_prs = false;

	if (FUNC4(p_hwfn))
		return FUNC6(p_hwfn, p_ptt);

	FUNC8(p_hwfn,
		 p_ptt,
		 PRS_REG_ROCE_DEST_QP_MAX_PF,
		 0);

	p_hwfn->rdma_prs_search_reg = PRS_REG_SEARCH_ROCE;

	/* We delay writing to this reg until first cid is allocated. See
	 * ecore_cxt_dynamic_ilt_alloc function for more details
	 */

	ll2_ethertype_en = FUNC7(p_hwfn,
			     p_ptt,
			     PRS_REG_LIGHT_L2_ETHERTYPE_EN);
	FUNC8(p_hwfn, p_ptt, PRS_REG_LIGHT_L2_ETHERTYPE_EN,
		 (ll2_ethertype_en | 0x01));

#ifndef REAL_ASIC_ONLY
	if (FUNC2(p_hwfn->p_dev) && FUNC3(p_hwfn->p_dev)) {
		FUNC8(p_hwfn,
			 p_ptt,
			 NIG_REG_LLH_ENG_CLS_ENG_ID_TBL,
			 0);
		FUNC8(p_hwfn,
			 p_ptt,
			 NIG_REG_LLH_ENG_CLS_ENG_ID_TBL + 4,
			 0);
	}
#endif

	if (FUNC5(p_hwfn, PROTOCOLID_ROCE) % 2)
	{
		FUNC0(p_hwfn,
			  true,
			  "The first RoCE's cid should be even\n");
		return ECORE_UNKNOWN_ERROR;
	}

	FUNC1(p_hwfn, ECORE_MSG_RDMA, "Initializing HW - Done\n");
	return ECORE_SUCCESS;
}