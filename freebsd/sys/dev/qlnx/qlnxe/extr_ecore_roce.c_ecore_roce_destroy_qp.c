
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ resp; scalar_t__ req; } ;
struct ecore_rdma_qp {scalar_t__ cur_state; int qp_idx; TYPE_1__ cq_prod; } ;
struct ecore_rdma_destroy_qp_out_params {scalar_t__ sq_cq_prod; scalar_t__ rq_cq_prod; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_INVAL ;
 scalar_t__ ECORE_ROCE_QP_STATE_ERR ;
 scalar_t__ ECORE_ROCE_QP_STATE_INIT ;
 scalar_t__ ECORE_ROCE_QP_STATE_RESET ;
 int ECORE_SUCCESS ;
 int ecore_roce_free_qp (struct ecore_hwfn*,int ) ;
 int ecore_roce_sp_destroy_qp_requester (struct ecore_hwfn*,struct ecore_rdma_qp*,scalar_t__*,scalar_t__*) ;
 int ecore_roce_sp_destroy_qp_responder (struct ecore_hwfn*,struct ecore_rdma_qp*,scalar_t__*,scalar_t__*) ;

enum _ecore_status_t ecore_roce_destroy_qp(struct ecore_hwfn *p_hwfn,
        struct ecore_rdma_qp *qp,
        struct ecore_rdma_destroy_qp_out_params *out_params)
{
 u32 cq_prod_resp = qp->cq_prod.resp, cq_prod_req = qp->cq_prod.req;
 u32 num_invalidated_mw = 0;
 u32 num_bound_mw = 0;
 enum _ecore_status_t rc;





 if ((qp->cur_state != ECORE_ROCE_QP_STATE_RESET) &&
     (qp->cur_state != ECORE_ROCE_QP_STATE_ERR) &&
     (qp->cur_state != ECORE_ROCE_QP_STATE_INIT))
 {
  DP_NOTICE(p_hwfn,
     1,
     "QP must be in error, reset or init state before destroying it\n");
  return ECORE_INVAL;
 }

 if (qp->cur_state != ECORE_ROCE_QP_STATE_RESET) {
  rc = ecore_roce_sp_destroy_qp_responder(p_hwfn,
       qp,
       &num_invalidated_mw,
       &cq_prod_resp);
  if (rc != ECORE_SUCCESS)
   return rc;


  rc = ecore_roce_sp_destroy_qp_requester(p_hwfn, qp,
       &num_bound_mw,
       &cq_prod_req);
  if (rc != ECORE_SUCCESS)
   return rc;


  if (num_invalidated_mw != num_bound_mw) {
   DP_NOTICE(p_hwfn,
      1,
      "number of invalidate memory windows is different from bounded ones\n");
   return ECORE_INVAL;
  }
 }

 ecore_roce_free_qp(p_hwfn, qp->qp_idx);

 out_params->rq_cq_prod = cq_prod_resp;
 out_params->sq_cq_prod = cq_prod_req;

 return ECORE_SUCCESS;
}
