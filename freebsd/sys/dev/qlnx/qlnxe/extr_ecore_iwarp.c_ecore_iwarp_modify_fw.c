
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwarp_modify_qp_ramrod_data {int transition_to_state; int flags; } ;
struct TYPE_6__ {struct iwarp_modify_qp_ramrod_data iwarp_modify_qp; } ;
struct ecore_spq_entry {TYPE_3__ ramrod; } ;
struct ecore_sp_init_data {int comp_mode; int opaque_fid; int cid; } ;
struct ecore_rdma_qp {scalar_t__ iwarp_state; int icid; } ;
struct TYPE_4__ {int opaque_fid; } ;
struct ecore_hwfn {TYPE_2__* p_rdma_info; TYPE_1__ hw_info; } ;
typedef int init_data ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_5__ {int proto; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int) ;
 scalar_t__ ECORE_IWARP_QP_STATE_CLOSING ;
 int ECORE_MSG_RDMA ;
 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 int IWARP_MODIFY_QP_RAMROD_DATA_STATE_TRANS_EN ;
 int IWARP_MODIFY_QP_STATE_CLOSING ;
 int IWARP_MODIFY_QP_STATE_ERROR ;
 int IWARP_RAMROD_CMD_ID_MODIFY_QP ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 int OSAL_NULL ;
 int SET_FIELD (int ,int ,int) ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,int ) ;

__attribute__((used)) static enum _ecore_status_t
ecore_iwarp_modify_fw(struct ecore_hwfn *p_hwfn,
        struct ecore_rdma_qp *qp)
{
 struct iwarp_modify_qp_ramrod_data *p_ramrod;
 struct ecore_sp_init_data init_data;
 struct ecore_spq_entry *p_ent;
 enum _ecore_status_t rc;


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = qp->icid;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

 rc = ecore_sp_init_request(p_hwfn, &p_ent,
       IWARP_RAMROD_CMD_ID_MODIFY_QP,
       p_hwfn->p_rdma_info->proto,
       &init_data);
 if (rc != ECORE_SUCCESS)
  return rc;

 p_ramrod = &p_ent->ramrod.iwarp_modify_qp;
 SET_FIELD(p_ramrod->flags, IWARP_MODIFY_QP_RAMROD_DATA_STATE_TRANS_EN,
    0x1);
 if (qp->iwarp_state == ECORE_IWARP_QP_STATE_CLOSING)
  p_ramrod->transition_to_state = IWARP_MODIFY_QP_STATE_CLOSING;
 else
  p_ramrod->transition_to_state = IWARP_MODIFY_QP_STATE_ERROR;

 rc = ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "QP(0x%x)rc=%d\n",
     qp->icid, rc);

 return rc;
}
