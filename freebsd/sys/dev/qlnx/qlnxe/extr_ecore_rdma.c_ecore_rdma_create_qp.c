
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct regpair {int dummy; } ;
struct TYPE_8__ {void* lo; void* hi; } ;
struct TYPE_7__ {void* lo; void* hi; } ;
struct ecore_rdma_qp {int sq_num_pages; int rq_num_pages; int req_offloaded; int resp_offloaded; int e2e_flow_control_en; int qpid; int icid; int qp_idx; int xrcd_id; int qp_type; int stats_queue; scalar_t__ use_srq; int srq_id; int rq_pbl_ptr; int rq_cq_id; int sq_pbl_ptr; int sq_cq_id; int dpi; int pd; int fmr_and_reserved_lkey; int signal_all; TYPE_4__ qp_handle_async; TYPE_3__ qp_handle; int iwarp_state; int cur_state; } ;
struct ecore_rdma_create_qp_out_params {int icid; int qp_id; } ;
struct ecore_rdma_create_qp_in_params {int sq_num_pages; int rq_num_pages; int xrcd_id; int qp_type; int stats_queue; int srq_id; int rq_pbl_ptr; int rq_cq_id; int sq_pbl_ptr; int sq_cq_id; int dpi; int pd; int fmr_and_reserved_lkey; int signal_all; scalar_t__ use_srq; int qp_handle_async_lo; int qp_handle_async_hi; int qp_handle_lo; int qp_handle_hi; } ;
struct ecore_hwfn {int p_dev; TYPE_2__* p_rdma_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_5__ {int max_stats_queues; } ;


 int DP_ERR (int ,char*,void*,struct ecore_rdma_create_qp_in_params*,...) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,...) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int) ;
 int ECORE_IWARP_QP_STATE_IDLE ;
 int ECORE_MSG_RDMA ;
 int ECORE_ROCE_QP_STATE_RESET ;
 int ECORE_ROCE_QP_TO_ICID (int ) ;
 int ECORE_SUCCESS ;
 int GFP_KERNEL ;
 scalar_t__ IS_IWARP (struct ecore_hwfn*) ;
 int IWARP_SHARED_QUEUE_PAGE_RQ_PBL_MAX_SIZE ;
 int IWARP_SHARED_QUEUE_PAGE_SQ_PBL_MAX_SIZE ;
 void* OSAL_CPU_TO_LE32 (int ) ;
 int OSAL_FREE (int ,struct ecore_rdma_qp*) ;
 struct ecore_rdma_qp* OSAL_NULL ;
 struct ecore_rdma_qp* OSAL_ZALLOC (int ,int ,int) ;
 int ecore_iwarp_create_qp (struct ecore_hwfn*,struct ecore_rdma_qp*,struct ecore_rdma_create_qp_out_params*) ;
 int ecore_roce_alloc_qp_idx (struct ecore_hwfn*,int *) ;

struct ecore_rdma_qp *ecore_rdma_create_qp(void *rdma_cxt,
   struct ecore_rdma_create_qp_in_params *in_params,
   struct ecore_rdma_create_qp_out_params *out_params)
{
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
 struct ecore_rdma_qp *qp;
 u8 max_stats_queues;
 enum _ecore_status_t rc = 0;

 if (!rdma_cxt || !in_params || !out_params || !p_hwfn->p_rdma_info) {
  DP_ERR(p_hwfn->p_dev,
         "ecore roce create qp failed due to NULL entry (rdma_cxt=%p, in=%p, out=%p, roce_info=?\n",
         rdma_cxt,
         in_params,
         out_params);
  return OSAL_NULL;
 }


 max_stats_queues = p_hwfn->p_rdma_info->dev->max_stats_queues;
 if (in_params->stats_queue >= max_stats_queues) {
  DP_ERR(p_hwfn->p_dev,
         "ecore rdma create qp failed due to invalid statistics queue %d. maximum is %d\n",
         in_params->stats_queue, max_stats_queues);
  return OSAL_NULL;
 }

 if (IS_IWARP(p_hwfn)) {
  if (in_params->sq_num_pages*sizeof(struct regpair) >
      IWARP_SHARED_QUEUE_PAGE_SQ_PBL_MAX_SIZE) {
   DP_NOTICE(p_hwfn->p_dev, 1, "Sq num pages: %d exceeds maximum\n",
      in_params->sq_num_pages);
   return OSAL_NULL;
  }
  if (in_params->rq_num_pages*sizeof(struct regpair) >
      IWARP_SHARED_QUEUE_PAGE_RQ_PBL_MAX_SIZE) {
   DP_NOTICE(p_hwfn->p_dev, 1,
      "Rq num pages: %d exceeds maximum\n",
      in_params->rq_num_pages);
   return OSAL_NULL;
  }
 }

 qp = OSAL_ZALLOC(p_hwfn->p_dev,
    GFP_KERNEL,
    sizeof(struct ecore_rdma_qp));
 if (!qp)
 {
  DP_NOTICE(p_hwfn, 0, "Failed to allocate ecore_rdma_qp\n");
  return OSAL_NULL;
 }

 qp->cur_state = ECORE_ROCE_QP_STATE_RESET;



 qp->qp_handle.hi = OSAL_CPU_TO_LE32(in_params->qp_handle_hi);
 qp->qp_handle.lo = OSAL_CPU_TO_LE32(in_params->qp_handle_lo);
 qp->qp_handle_async.hi = OSAL_CPU_TO_LE32(in_params->qp_handle_async_hi);
 qp->qp_handle_async.lo = OSAL_CPU_TO_LE32(in_params->qp_handle_async_lo);
 qp->use_srq = in_params->use_srq;
 qp->signal_all = in_params->signal_all;
 qp->fmr_and_reserved_lkey = in_params->fmr_and_reserved_lkey;
 qp->pd = in_params->pd;
 qp->dpi = in_params->dpi;
 qp->sq_cq_id = in_params->sq_cq_id;
 qp->sq_num_pages = in_params->sq_num_pages;
 qp->sq_pbl_ptr = in_params->sq_pbl_ptr;
 qp->rq_cq_id = in_params->rq_cq_id;
 qp->rq_num_pages = in_params->rq_num_pages;
 qp->rq_pbl_ptr = in_params->rq_pbl_ptr;
 qp->srq_id = in_params->srq_id;
 qp->req_offloaded = 0;
 qp->resp_offloaded = 0;



 qp->e2e_flow_control_en = qp->use_srq ? 0 : 1;
 qp->stats_queue = in_params->stats_queue;
 qp->qp_type = in_params->qp_type;
 qp->xrcd_id = in_params->xrcd_id;

 if (IS_IWARP(p_hwfn)) {
  rc = ecore_iwarp_create_qp(p_hwfn, qp, out_params);
  qp->qpid = qp->icid;
 } else {
  rc = ecore_roce_alloc_qp_idx(p_hwfn, &qp->qp_idx);
  qp->icid = ECORE_ROCE_QP_TO_ICID(qp->qp_idx);
  qp->qpid = ((0xFF << 16) | qp->icid);
 }

 if (rc != ECORE_SUCCESS) {
  OSAL_FREE(p_hwfn->p_dev, qp);
  return OSAL_NULL;
 }

 out_params->icid = qp->icid;
 out_params->qp_id = qp->qpid;



 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "Create QP, rc = %d\n", rc);
 return qp;
}
