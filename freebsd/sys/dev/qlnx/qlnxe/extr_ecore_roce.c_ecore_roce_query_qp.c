
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_rdma_query_qp_out_params {int state; int draining; } ;
struct ecore_rdma_qp {int cur_state; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_SUCCESS ;
 int ecore_roce_sp_query_requester (struct ecore_hwfn*,struct ecore_rdma_qp*,struct ecore_rdma_query_qp_out_params*,int *) ;
 int ecore_roce_sp_query_responder (struct ecore_hwfn*,struct ecore_rdma_qp*,struct ecore_rdma_query_qp_out_params*) ;

enum _ecore_status_t ecore_roce_query_qp(
 struct ecore_hwfn *p_hwfn,
 struct ecore_rdma_qp *qp,
 struct ecore_rdma_query_qp_out_params *out_params)
{
 enum _ecore_status_t rc;

 rc = ecore_roce_sp_query_responder(p_hwfn, qp, out_params);
 if (rc)
  return rc;

 rc = ecore_roce_sp_query_requester(p_hwfn, qp, out_params,
        &out_params->draining);
 if (rc)
  return rc;

 out_params->state = qp->cur_state;

 return ECORE_SUCCESS;
}
