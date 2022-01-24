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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct rdma_close_func_ramrod_data {scalar_t__ cnq_start_offset; int /*<<< orphan*/  num_cnqs; } ;
struct TYPE_5__ {struct rdma_close_func_ramrod_data rdma_close_func; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_sp_init_data {int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; } ;
struct ecore_ptt {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  opaque_fid; } ;
struct ecore_hwfn {int b_rdma_enabled_in_prs; TYPE_3__* p_rdma_info; TYPE_1__ hw_info; int /*<<< orphan*/  p_dev; scalar_t__ rdma_prs_search_reg; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_6__ {int /*<<< orphan*/  num_cnqs; int /*<<< orphan*/  proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int /*<<< orphan*/  ECORE_RDMA_CNQ_RAM ; 
 int /*<<< orphan*/  ECORE_SPQ_MODE_EBLOCK ; 
 int ECORE_SUCCESS ; 
 int ECORE_TIMEOUT ; 
 scalar_t__ FUNC4 (struct ecore_hwfn*) ; 
 scalar_t__ NIG_REG_LLH_ENG_CLS_ENG_ID_TBL ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 scalar_t__ PRS_REG_LIGHT_L2_ETHERTYPE_EN ; 
 scalar_t__ PRS_REG_ROCE_DEST_QP_MAX_PF ; 
 int /*<<< orphan*/  RDMA_RAMROD_FUNC_CLOSE ; 
 scalar_t__ FUNC6 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ecore_hwfn*) ; 
 struct ecore_ptt* FUNC8 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC10 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__) ; 
 int FUNC11 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC12 (struct ecore_hwfn*) ; 
 int FUNC13 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC14 (struct ecore_hwfn*) ; 
 int FUNC15 (struct ecore_hwfn*,struct ecore_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_sp_init_data*) ; 
 int FUNC16 (struct ecore_hwfn*,struct ecore_spq_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int) ; 

enum _ecore_status_t FUNC18(void *rdma_cxt)
{
	struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
	struct rdma_close_func_ramrod_data *p_ramrod;
	struct ecore_sp_init_data init_data;
	struct ecore_spq_entry *p_ent;
	struct ecore_ptt *p_ptt;
	u32 ll2_ethertype_en;
	enum _ecore_status_t rc = ECORE_TIMEOUT;

	FUNC1(p_hwfn, ECORE_MSG_RDMA, "RDMA stop\n");

	rc = FUNC11(p_hwfn);
	if (rc != ECORE_SUCCESS)
		return rc;

	p_ptt = FUNC8(p_hwfn);
	if (!p_ptt) {
		FUNC1(p_hwfn, ECORE_MSG_RDMA, "Failed to acquire PTT\n");
		return rc;
	}

#ifdef CONFIG_DCQCN
	ecore_roce_stop_rl(p_hwfn);
#endif

	/* Disable RoCE search */
	FUNC17(p_hwfn, p_ptt, p_hwfn->rdma_prs_search_reg, 0);
	p_hwfn->b_rdma_enabled_in_prs = false;

	FUNC17(p_hwfn,
		 p_ptt,
		 PRS_REG_ROCE_DEST_QP_MAX_PF,
		 0);

	ll2_ethertype_en = FUNC10(p_hwfn,
				    p_ptt,
				    PRS_REG_LIGHT_L2_ETHERTYPE_EN);

	FUNC17(p_hwfn, p_ptt, PRS_REG_LIGHT_L2_ETHERTYPE_EN,
		 (ll2_ethertype_en & 0xFFFE));

#ifndef REAL_ASIC_ONLY
	/* INTERNAL: In CMT mode, re-initialize nig to direct packets to both
	 * enginesfor L2 performance, Roce requires all traffic to go just to
	 * engine 0.
	 */
	if (FUNC2(p_hwfn->p_dev) && FUNC3(p_hwfn->p_dev)) {
		FUNC0(p_hwfn->p_dev,
		       "On Everest 4 Big Bear Board revision A0 when RoCE driver is loaded L2 performance is sub-optimal (all traffic is routed to engine 0). For optimal L2 results either remove RoCE driver or use board revision B0\n");

		FUNC17(p_hwfn,
			 p_ptt,
			 NIG_REG_LLH_ENG_CLS_ENG_ID_TBL,
			 0x55555555);
		FUNC17(p_hwfn,
			 p_ptt,
			 NIG_REG_LLH_ENG_CLS_ENG_ID_TBL + 0x4,
			 0x55555555);
	}
#endif

	if (FUNC4(p_hwfn)) {
		rc = FUNC7(p_hwfn);
		if (rc != ECORE_SUCCESS) {
			FUNC9(p_hwfn, p_ptt);
			return 0;
		}
	} else {
		rc = FUNC13(p_hwfn);
		if (rc != ECORE_SUCCESS) {
			FUNC9(p_hwfn, p_ptt);
			return 0;
		}
	}

	FUNC9(p_hwfn, p_ptt);

	/* Get SPQ entry */
	FUNC5(&init_data, 0, sizeof(init_data));
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

	/* Stop RoCE */
	rc = FUNC15(p_hwfn, &p_ent, RDMA_RAMROD_FUNC_CLOSE,
				   p_hwfn->p_rdma_info->proto, &init_data);
	if (rc != ECORE_SUCCESS)
		goto out;

	p_ramrod = &p_ent->ramrod.rdma_close_func;

	p_ramrod->num_cnqs = p_hwfn->p_rdma_info->num_cnqs;
	p_ramrod->cnq_start_offset = (u8)FUNC6(p_hwfn, ECORE_RDMA_CNQ_RAM);

	rc = FUNC16(p_hwfn, p_ent, OSAL_NULL);

out:
	FUNC12(p_hwfn);

	FUNC1(p_hwfn, ECORE_MSG_RDMA, "RDMA stop done, rc = %d\n", rc);
	return rc;
}