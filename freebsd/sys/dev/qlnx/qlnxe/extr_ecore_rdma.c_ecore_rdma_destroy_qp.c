
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_rdma_qp {int icid; } ;
struct ecore_rdma_destroy_qp_out_params {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_ERR (struct ecore_hwfn*,char*,void*,struct ecore_rdma_qp*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ) ;
 int ECORE_INVAL ;
 int ECORE_MSG_RDMA ;
 int ECORE_SUCCESS ;
 scalar_t__ IS_IWARP (struct ecore_hwfn*) ;
 int OSAL_FREE (int ,struct ecore_rdma_qp*) ;
 int ecore_iwarp_destroy_qp (struct ecore_hwfn*,struct ecore_rdma_qp*) ;
 int ecore_roce_destroy_qp (struct ecore_hwfn*,struct ecore_rdma_qp*,struct ecore_rdma_destroy_qp_out_params*) ;

enum _ecore_status_t ecore_rdma_destroy_qp(void *rdma_cxt,
        struct ecore_rdma_qp *qp,
        struct ecore_rdma_destroy_qp_out_params *out_params)
{
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
 enum _ecore_status_t rc = ECORE_SUCCESS;

 if (!rdma_cxt || !qp) {
  DP_ERR(p_hwfn,
         "ecore rdma destroy qp failed: invalid NULL input. rdma_cxt=%p, qp=%p\n",
         rdma_cxt, qp);
  return ECORE_INVAL;
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "QP(0x%x)\n", qp->icid);

 if (IS_IWARP(p_hwfn))
  rc = ecore_iwarp_destroy_qp(p_hwfn, qp);
 else
  rc = ecore_roce_destroy_qp(p_hwfn, qp, out_params);


 OSAL_FREE(p_hwfn->p_dev, qp);

 return rc;
}
