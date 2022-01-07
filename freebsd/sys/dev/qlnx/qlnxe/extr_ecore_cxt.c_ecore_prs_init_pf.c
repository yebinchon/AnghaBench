
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_tid_seg {int count; } ;
struct TYPE_3__ {scalar_t__ is_target; } ;
struct TYPE_4__ {TYPE_1__ fcoe_pf_params; } ;
struct ecore_hwfn {TYPE_2__ pf_params; struct ecore_cxt_mngr* p_cxt_mngr; } ;
struct ecore_cxt_mngr {struct ecore_conn_type_cfg* conn_cfg; } ;
struct ecore_conn_type_cfg {struct ecore_tid_seg* tid_seg; int cid_count; } ;


 size_t ECORE_CXT_FCOE_TID_SEG ;
 size_t PROTOCOLID_FCOE ;
 int PRS_REG_TASK_ID_MAX_INITIATOR_PF_RT_OFFSET ;
 int PRS_REG_TASK_ID_MAX_TARGET_PF_RT_OFFSET ;
 int STORE_RT_REG_AGG (struct ecore_hwfn*,int ,int ) ;

__attribute__((used)) static void ecore_prs_init_pf(struct ecore_hwfn *p_hwfn)
{
 struct ecore_cxt_mngr *p_mngr = p_hwfn->p_cxt_mngr;
 struct ecore_conn_type_cfg *p_fcoe;
 struct ecore_tid_seg *p_tid;

 p_fcoe = &p_mngr->conn_cfg[PROTOCOLID_FCOE];


 if (!p_fcoe->cid_count)
  return;

 p_tid = &p_fcoe->tid_seg[ECORE_CXT_FCOE_TID_SEG];
 if (p_hwfn->pf_params.fcoe_pf_params.is_target) {
  STORE_RT_REG_AGG(p_hwfn,
     PRS_REG_TASK_ID_MAX_TARGET_PF_RT_OFFSET,
     p_tid->count);
 } else {
  STORE_RT_REG_AGG(p_hwfn,
    PRS_REG_TASK_ID_MAX_INITIATOR_PF_RT_OFFSET,
    p_tid->count);
 }
}
