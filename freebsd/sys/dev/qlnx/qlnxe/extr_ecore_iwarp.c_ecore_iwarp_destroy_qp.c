
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_rdma_qp {scalar_t__ iwarp_state; int shared_queue_phys_addr; scalar_t__ shared_queue; int icid; struct ecore_iwarp_ep* ep; } ;
struct ecore_iwarp_fpdu {scalar_t__ incomplete_bytes; } ;
struct ecore_iwarp_ep {scalar_t__ state; } ;
struct ecore_hwfn {int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,scalar_t__) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,scalar_t__) ;
 scalar_t__ ECORE_IWARP_EP_CLOSED ;
 scalar_t__ ECORE_IWARP_QP_STATE_ERROR ;
 int ECORE_MSG_RDMA ;
 int ECORE_SUCCESS ;
 int IWARP_SHARED_QUEUE_PAGE_SIZE ;
 int OSAL_DMA_FREE_COHERENT (int ,scalar_t__,int ,int ) ;
 int OSAL_MSLEEP (int) ;
 int ecore_iwarp_destroy_ep (struct ecore_hwfn*,struct ecore_iwarp_ep*,int) ;
 int ecore_iwarp_fw_destroy (struct ecore_hwfn*,struct ecore_rdma_qp*) ;
 struct ecore_iwarp_fpdu* ecore_iwarp_get_curr_fpdu (struct ecore_hwfn*,int ) ;
 int ecore_iwarp_modify_qp (struct ecore_hwfn*,struct ecore_rdma_qp*,scalar_t__,int) ;

enum _ecore_status_t
ecore_iwarp_destroy_qp(struct ecore_hwfn *p_hwfn,
         struct ecore_rdma_qp *qp)
{
 enum _ecore_status_t rc = ECORE_SUCCESS;
 struct ecore_iwarp_ep *ep = qp->ep;
 struct ecore_iwarp_fpdu *fpdu;
 int wait_count = 0;

 fpdu = ecore_iwarp_get_curr_fpdu(p_hwfn, qp->icid);
 if (fpdu && fpdu->incomplete_bytes)
  DP_NOTICE(p_hwfn, 0,
     "Pending Partial fpdu with incomplete bytes=%d\n",
     fpdu->incomplete_bytes);

 if (qp->iwarp_state != ECORE_IWARP_QP_STATE_ERROR) {

  rc = ecore_iwarp_modify_qp(p_hwfn, qp,
        ECORE_IWARP_QP_STATE_ERROR,
        0);

  if (rc != ECORE_SUCCESS)
   return rc;
 }


 if (ep) {
  while (ep->state != ECORE_IWARP_EP_CLOSED) {
   DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA,
       "Waiting for ep->state to be closed...state=%x\n",
       ep->state);

   OSAL_MSLEEP(100);
   if (wait_count++ > 200) {
    DP_NOTICE(p_hwfn, 0, "ep state close timeout state=%x\n",
       ep->state);
    break;
   }
  }

  ecore_iwarp_destroy_ep(p_hwfn, ep, 0);
 }

 rc = ecore_iwarp_fw_destroy(p_hwfn, qp);

 if (qp->shared_queue)
  OSAL_DMA_FREE_COHERENT(p_hwfn->p_dev,
           qp->shared_queue,
           qp->shared_queue_phys_addr,
           IWARP_SHARED_QUEUE_PAGE_SIZE);

 return rc;
}
