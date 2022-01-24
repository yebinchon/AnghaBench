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
struct rl_update_ramrod_data {void* qcn_timeuot_us; void* dcqcn_timeuot_us; void* dcqcn_k_us; void* dcqcn_g; void* rl_r_hai; void* rl_r_ai; void* rl_max_rate; void* rl_bc_rate; int /*<<< orphan*/  rl_dc_qcn_flg; int /*<<< orphan*/  rl_id_last; int /*<<< orphan*/  rl_id_first; int /*<<< orphan*/  rl_stop_flg; int /*<<< orphan*/  rl_start_flg; int /*<<< orphan*/  rl_init_flg; int /*<<< orphan*/  dcqcn_update_param_flg; int /*<<< orphan*/  qcn_update_param_flg; } ;
struct TYPE_4__ {struct rl_update_ramrod_data rl_update; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_sp_init_data {int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  cid; } ;
struct ecore_rl_update_params {int /*<<< orphan*/  qcn_timeuot_us; int /*<<< orphan*/  dcqcn_timeuot_us; int /*<<< orphan*/  dcqcn_k_us; int /*<<< orphan*/  dcqcn_gd; int /*<<< orphan*/  rl_r_hai; int /*<<< orphan*/  rl_r_ai; int /*<<< orphan*/  rl_max_rate; int /*<<< orphan*/  rl_bc_rate; int /*<<< orphan*/  rl_dc_qcn_flg; int /*<<< orphan*/  rl_id_last; int /*<<< orphan*/  rl_id_first; int /*<<< orphan*/  rl_stop_flg; int /*<<< orphan*/  rl_start_flg; int /*<<< orphan*/  rl_init_flg; int /*<<< orphan*/  dcqcn_update_param_flg; int /*<<< orphan*/  qcn_update_param_flg; } ;
struct TYPE_3__ {int /*<<< orphan*/  opaque_fid; } ;
struct ecore_hwfn {TYPE_1__ hw_info; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  COMMON_RAMROD_RL_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*,void*,void*,void*,void*,void*,void*) ; 
 int /*<<< orphan*/  ECORE_MSG_SPQ ; 
 int ECORE_NOTIMPL ; 
 int /*<<< orphan*/  ECORE_SPQ_MODE_EBLOCK ; 
 int ECORE_SUCCESS ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 struct ecore_spq_entry* OSAL_NULL ; 
 int /*<<< orphan*/  PROTOCOLID_COMMON ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_sp_init_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*) ; 
 int FUNC8 (struct ecore_hwfn*,struct ecore_spq_entry*,struct ecore_spq_entry*) ; 

enum _ecore_status_t FUNC9(struct ecore_hwfn *p_hwfn,
					struct ecore_rl_update_params *params)
{
	struct ecore_spq_entry *p_ent = OSAL_NULL;
	enum _ecore_status_t rc = ECORE_NOTIMPL;
	struct rl_update_ramrod_data *rl_update;
	struct ecore_sp_init_data init_data;

	/* Get SPQ entry */
	FUNC3(&init_data, 0, sizeof(init_data));
	init_data.cid = FUNC7(p_hwfn);
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

	rc = FUNC4(p_hwfn, &p_ent,
				   COMMON_RAMROD_RL_UPDATE, PROTOCOLID_COMMON,
				   &init_data);
	if (rc != ECORE_SUCCESS)
		return rc;

	rl_update = &p_ent->ramrod.rl_update;

	rl_update->qcn_update_param_flg = params->qcn_update_param_flg;
	rl_update->dcqcn_update_param_flg = params->dcqcn_update_param_flg;
	rl_update->rl_init_flg = params->rl_init_flg;
	rl_update->rl_start_flg = params->rl_start_flg;
	rl_update->rl_stop_flg = params->rl_stop_flg;
	rl_update->rl_id_first = params->rl_id_first;
	rl_update->rl_id_last = params->rl_id_last;
	rl_update->rl_dc_qcn_flg = params->rl_dc_qcn_flg;
	rl_update->rl_bc_rate = FUNC2(params->rl_bc_rate);
	rl_update->rl_max_rate = FUNC1(FUNC6(params->rl_max_rate));
	rl_update->rl_r_ai = FUNC1(FUNC6(params->rl_r_ai));
	rl_update->rl_r_hai = FUNC1(FUNC6(params->rl_r_hai));
	rl_update->dcqcn_g = FUNC1(FUNC5(params->dcqcn_gd));
	rl_update->dcqcn_k_us = FUNC2(params->dcqcn_k_us);
	rl_update->dcqcn_timeuot_us = FUNC2(params->dcqcn_timeuot_us);
	rl_update->qcn_timeuot_us = FUNC2(params->qcn_timeuot_us);

	FUNC0(p_hwfn, ECORE_MSG_SPQ, "rl_params: qcn_update_param_flg %x, dcqcn_update_param_flg %x, rl_init_flg %x, rl_start_flg %x, rl_stop_flg %x, rl_id_first %x, rl_id_last %x, rl_dc_qcn_flg %x, rl_bc_rate %x, rl_max_rate %x, rl_r_ai %x, rl_r_hai %x, dcqcn_g %x, dcqcn_k_us %x, dcqcn_timeuot_us %x, qcn_timeuot_us %x\n",
		   rl_update->qcn_update_param_flg, rl_update->dcqcn_update_param_flg,
		   rl_update->rl_init_flg, rl_update->rl_start_flg,
		   rl_update->rl_stop_flg, rl_update->rl_id_first,
		   rl_update->rl_id_last, rl_update->rl_dc_qcn_flg,
		   rl_update->rl_bc_rate, rl_update->rl_max_rate,
		   rl_update->rl_r_ai, rl_update->rl_r_hai,
		   rl_update->dcqcn_g, rl_update->dcqcn_k_us,
		   rl_update->dcqcn_timeuot_us, rl_update->qcn_timeuot_us);

	return FUNC8(p_hwfn, p_ent, OSAL_NULL);
}