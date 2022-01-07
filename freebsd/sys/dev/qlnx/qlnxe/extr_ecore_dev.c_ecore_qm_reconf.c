
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_qm_info {int num_pqs; int start_pq; } ;
struct ecore_ptt {int dummy; } ;
struct TYPE_2__ {int hw_mode; } ;
struct ecore_hwfn {TYPE_1__ hw_info; int rel_pf_id; struct ecore_qm_info qm_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_INVAL ;
 int ECORE_SUCCESS ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int PHASE_QM_PF ;
 int ecore_init_clear_rt_data (struct ecore_hwfn*) ;
 int ecore_init_qm_info (struct ecore_hwfn*) ;
 int ecore_init_run (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int ) ;
 int ecore_qm_init_pf (struct ecore_hwfn*,struct ecore_ptt*,int) ;
 int ecore_send_qm_stop_cmd (struct ecore_hwfn*,struct ecore_ptt*,int,int,int ,int ) ;
 int qm_lock ;

enum _ecore_status_t ecore_qm_reconf(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt)
{
 struct ecore_qm_info *qm_info = &p_hwfn->qm_info;
 bool b_rc;
 enum _ecore_status_t rc;


 ecore_init_qm_info(p_hwfn);


 OSAL_SPIN_LOCK(&qm_lock);
 b_rc = ecore_send_qm_stop_cmd(p_hwfn, p_ptt, 0, 1,
          qm_info->start_pq, qm_info->num_pqs);
 OSAL_SPIN_UNLOCK(&qm_lock);
 if (!b_rc)
  return ECORE_INVAL;


 ecore_init_clear_rt_data(p_hwfn);


 ecore_qm_init_pf(p_hwfn, p_ptt, 0);


 rc = ecore_init_run(p_hwfn, p_ptt, PHASE_QM_PF, p_hwfn->rel_pf_id,
       p_hwfn->hw_info.hw_mode);
 if (rc != ECORE_SUCCESS)
  return rc;


 OSAL_SPIN_LOCK(&qm_lock);
 b_rc = ecore_send_qm_stop_cmd(p_hwfn, p_ptt, 1, 1,
          qm_info->start_pq, qm_info->num_pqs);
 OSAL_SPIN_UNLOCK(&qm_lock);
 if (!b_rc)
  return ECORE_INVAL;

 return ECORE_SUCCESS;
}
