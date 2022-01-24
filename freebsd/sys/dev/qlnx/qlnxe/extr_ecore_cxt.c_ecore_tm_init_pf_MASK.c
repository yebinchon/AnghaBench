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
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  tm_iids ;
struct ecore_tm_iids {int per_vf_cids; int pf_cids; int per_vf_tids; int* pf_tids; } ;
struct ecore_hwfn {int rel_pf_id; TYPE_2__* p_dev; struct ecore_cxt_mngr* p_cxt_mngr; } ;
struct ecore_cxt_mngr {int vf_count; } ;
typedef  int /*<<< orphan*/  cfg_word ;
struct TYPE_4__ {TYPE_1__* p_iov_info; } ;
struct TYPE_3__ {int first_vf_in_pf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ecore_hwfn*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int NUM_TASK_PF_SEGMENTS ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_tm_iids*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,int,int) ; 
 int /*<<< orphan*/  TM_CFG_CID_PRE_SCAN_ROWS ; 
 int /*<<< orphan*/  TM_CFG_NUM_IDS ; 
 int /*<<< orphan*/  TM_CFG_PARENT_PF ; 
 int /*<<< orphan*/  TM_CFG_PRE_SCAN_OFFSET ; 
 int /*<<< orphan*/  TM_CFG_TID_OFFSET ; 
 int /*<<< orphan*/  TM_CFG_TID_PRE_SCAN_ROWS ; 
 int TM_REG_CONFIG_CONN_MEM_RT_OFFSET ; 
 int TM_REG_CONFIG_TASK_MEM_RT_OFFSET ; 
 int /*<<< orphan*/  TM_REG_PF_ENABLE_CONN_RT_OFFSET ; 
 int /*<<< orphan*/  TM_REG_PF_ENABLE_TASK_RT_OFFSET ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_cxt_mngr*,struct ecore_tm_iids*) ; 

__attribute__((used)) static void FUNC7(struct ecore_hwfn *p_hwfn)
{
	struct ecore_cxt_mngr *p_mngr = p_hwfn->p_cxt_mngr;
	u32 active_seg_mask = 0, tm_offset, rt_reg;
	struct ecore_tm_iids tm_iids;
	u64 cfg_word;
	u8 i;

	FUNC2(&tm_iids, sizeof(tm_iids));
	FUNC6(p_mngr, &tm_iids);

	/* @@@TBD No pre-scan for now */

	/* Note: We assume consecutive VFs for a PF */
	for (i = 0; i < p_mngr->vf_count; i++) {
		cfg_word = 0;
		FUNC3(cfg_word, TM_CFG_NUM_IDS, tm_iids.per_vf_cids);
		FUNC3(cfg_word, TM_CFG_PRE_SCAN_OFFSET, 0);
		FUNC3(cfg_word, TM_CFG_PARENT_PF, p_hwfn->rel_pf_id);
		FUNC3(cfg_word, TM_CFG_CID_PRE_SCAN_ROWS, 0); /* scan all */

		rt_reg = TM_REG_CONFIG_CONN_MEM_RT_OFFSET +
			 (sizeof(cfg_word) / sizeof(u32)) *
			 (p_hwfn->p_dev->p_iov_info->first_vf_in_pf + i);
		FUNC5(p_hwfn, rt_reg, cfg_word);
	}

	cfg_word = 0;
	FUNC3(cfg_word, TM_CFG_NUM_IDS, tm_iids.pf_cids);
	FUNC3(cfg_word, TM_CFG_PRE_SCAN_OFFSET, 0);
	FUNC3(cfg_word, TM_CFG_PARENT_PF, 0);	  /* n/a for PF */
	FUNC3(cfg_word, TM_CFG_CID_PRE_SCAN_ROWS, 0); /* scan all   */

	rt_reg = TM_REG_CONFIG_CONN_MEM_RT_OFFSET +
		 (sizeof(cfg_word) / sizeof(u32)) *
		 (FUNC1(p_hwfn->p_dev) + p_hwfn->rel_pf_id);
	FUNC5(p_hwfn, rt_reg, cfg_word);

	/* enale scan */
	FUNC4(p_hwfn, TM_REG_PF_ENABLE_CONN_RT_OFFSET,
		     tm_iids.pf_cids  ? 0x1 : 0x0);

	/* @@@TBD how to enable the scan for the VFs */

	tm_offset = tm_iids.per_vf_cids;

	/* Note: We assume consecutive VFs for a PF */
	for (i = 0; i < p_mngr->vf_count; i++) {
		cfg_word = 0;
		FUNC3(cfg_word, TM_CFG_NUM_IDS, tm_iids.per_vf_tids);
		FUNC3(cfg_word, TM_CFG_PRE_SCAN_OFFSET, 0);
		FUNC3(cfg_word, TM_CFG_PARENT_PF, p_hwfn->rel_pf_id);
		FUNC3(cfg_word, TM_CFG_TID_OFFSET, tm_offset);
		FUNC3(cfg_word, TM_CFG_TID_PRE_SCAN_ROWS, (u64)0);

		rt_reg = TM_REG_CONFIG_TASK_MEM_RT_OFFSET +
			 (sizeof(cfg_word) / sizeof(u32)) *
			 (p_hwfn->p_dev->p_iov_info->first_vf_in_pf + i);

		FUNC5(p_hwfn, rt_reg, cfg_word);
	}

	tm_offset = tm_iids.pf_cids;
	for (i = 0; i < NUM_TASK_PF_SEGMENTS; i++) {
		cfg_word = 0;
		FUNC3(cfg_word, TM_CFG_NUM_IDS, tm_iids.pf_tids[i]);
		FUNC3(cfg_word, TM_CFG_PRE_SCAN_OFFSET, 0);
		FUNC3(cfg_word, TM_CFG_PARENT_PF, 0);
		FUNC3(cfg_word, TM_CFG_TID_OFFSET, tm_offset);
		FUNC3(cfg_word, TM_CFG_TID_PRE_SCAN_ROWS, (u64)0);

		rt_reg = TM_REG_CONFIG_TASK_MEM_RT_OFFSET +
			 (sizeof(cfg_word) / sizeof(u32)) *
			 (FUNC1(p_hwfn->p_dev) +
			 p_hwfn->rel_pf_id * NUM_TASK_PF_SEGMENTS + i);

		FUNC5(p_hwfn, rt_reg, cfg_word);
		active_seg_mask |= (tm_iids.pf_tids[i] ? (1 << i) : 0);

		tm_offset += tm_iids.pf_tids[i];
	}

	if (FUNC0(p_hwfn))
		active_seg_mask = 0;

	FUNC4(p_hwfn, TM_REG_PF_ENABLE_TASK_RT_OFFSET, active_seg_mask);

	/* @@@TBD how to enable the scan for the VFs */
}