
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rl_update_ramrod_data {void* qcn_timeuot_us; void* dcqcn_timeuot_us; void* dcqcn_k_us; void* dcqcn_g; void* rl_r_hai; void* rl_r_ai; void* rl_max_rate; void* rl_bc_rate; int rl_dc_qcn_flg; int rl_id_last; int rl_id_first; int rl_stop_flg; int rl_start_flg; int rl_init_flg; int dcqcn_update_param_flg; int qcn_update_param_flg; } ;
struct TYPE_4__ {struct rl_update_ramrod_data rl_update; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct ecore_rl_update_params {int qcn_timeuot_us; int dcqcn_timeuot_us; int dcqcn_k_us; int dcqcn_gd; int rl_r_hai; int rl_r_ai; int rl_max_rate; int rl_bc_rate; int rl_dc_qcn_flg; int rl_id_last; int rl_id_first; int rl_stop_flg; int rl_start_flg; int rl_init_flg; int dcqcn_update_param_flg; int qcn_update_param_flg; } ;
struct TYPE_3__ {int opaque_fid; } ;
struct ecore_hwfn {TYPE_1__ hw_info; } ;
typedef int init_data ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int COMMON_RAMROD_RL_UPDATE ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,void*,void*,void*,void*,void*,void*,void*,void*) ;
 int ECORE_MSG_SPQ ;
 int ECORE_NOTIMPL ;
 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 void* OSAL_CPU_TO_LE16 (int ) ;
 void* OSAL_CPU_TO_LE32 (int ) ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 struct ecore_spq_entry* OSAL_NULL ;
 int PROTOCOLID_COMMON ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_sp_rl_gd_denom (int ) ;
 int ecore_sp_rl_mb_to_qm (int ) ;
 int ecore_spq_get_cid (struct ecore_hwfn*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,struct ecore_spq_entry*) ;

enum _ecore_status_t ecore_sp_rl_update(struct ecore_hwfn *p_hwfn,
     struct ecore_rl_update_params *params)
{
 struct ecore_spq_entry *p_ent = OSAL_NULL;
 enum _ecore_status_t rc = ECORE_NOTIMPL;
 struct rl_update_ramrod_data *rl_update;
 struct ecore_sp_init_data init_data;


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = ecore_spq_get_cid(p_hwfn);
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

 rc = ecore_sp_init_request(p_hwfn, &p_ent,
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
 rl_update->rl_bc_rate = OSAL_CPU_TO_LE32(params->rl_bc_rate);
 rl_update->rl_max_rate = OSAL_CPU_TO_LE16(ecore_sp_rl_mb_to_qm(params->rl_max_rate));
 rl_update->rl_r_ai = OSAL_CPU_TO_LE16(ecore_sp_rl_mb_to_qm(params->rl_r_ai));
 rl_update->rl_r_hai = OSAL_CPU_TO_LE16(ecore_sp_rl_mb_to_qm(params->rl_r_hai));
 rl_update->dcqcn_g = OSAL_CPU_TO_LE16(ecore_sp_rl_gd_denom(params->dcqcn_gd));
 rl_update->dcqcn_k_us = OSAL_CPU_TO_LE32(params->dcqcn_k_us);
 rl_update->dcqcn_timeuot_us = OSAL_CPU_TO_LE32(params->dcqcn_timeuot_us);
 rl_update->qcn_timeuot_us = OSAL_CPU_TO_LE32(params->qcn_timeuot_us);

 DP_VERBOSE(p_hwfn, ECORE_MSG_SPQ, "rl_params: qcn_update_param_flg %x, dcqcn_update_param_flg %x, rl_init_flg %x, rl_start_flg %x, rl_stop_flg %x, rl_id_first %x, rl_id_last %x, rl_dc_qcn_flg %x, rl_bc_rate %x, rl_max_rate %x, rl_r_ai %x, rl_r_hai %x, dcqcn_g %x, dcqcn_k_us %x, dcqcn_timeuot_us %x, qcn_timeuot_us %x\n",
     rl_update->qcn_update_param_flg, rl_update->dcqcn_update_param_flg,
     rl_update->rl_init_flg, rl_update->rl_start_flg,
     rl_update->rl_stop_flg, rl_update->rl_id_first,
     rl_update->rl_id_last, rl_update->rl_dc_qcn_flg,
     rl_update->rl_bc_rate, rl_update->rl_max_rate,
     rl_update->rl_r_ai, rl_update->rl_r_hai,
     rl_update->dcqcn_g, rl_update->dcqcn_k_us,
     rl_update->dcqcn_timeuot_us, rl_update->qcn_timeuot_us);

 return ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);
}
