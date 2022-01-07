
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_rdma_query_qp_out_params {int sqd_async; int max_dest_rd_atomic; int max_rd_atomic; scalar_t__ pkey_index; int min_rnr_nak_timer; int retry_cnt; int rnr_retry; int timeout; int traffic_class_tos; int hop_limit_ttl; int flow_label; int dgid; int incoming_rdma_write_en; int incoming_rdma_read_en; int e2e_flow_control_en; int incoming_atomic_en; int dest_qp; int mtu; } ;
struct ecore_rdma_qp {int icid; int sqd_async; int max_rd_atomic_resp; int max_rd_atomic_req; int min_rnr_nak_timer; int retry_cnt; int rnr_retry_cnt; int ack_timeout; int traffic_class_tos; int hop_limit_ttl; int flow_label; int dgid; int incoming_rdma_write_en; int incoming_rdma_read_en; int e2e_flow_control_en; int incoming_atomic_en; int dest_qp; int mtu; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int) ;
 int ECORE_MSG_RDMA ;
 int ECORE_SUCCESS ;
 scalar_t__ IS_IWARP (struct ecore_hwfn*) ;
 int ecore_iwarp_query_qp (struct ecore_rdma_qp*,struct ecore_rdma_query_qp_out_params*) ;
 int ecore_roce_query_qp (struct ecore_hwfn*,struct ecore_rdma_qp*,struct ecore_rdma_query_qp_out_params*) ;

enum _ecore_status_t ecore_rdma_query_qp(void *rdma_cxt,
   struct ecore_rdma_qp *qp,
   struct ecore_rdma_query_qp_out_params *out_params)

{
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
 enum _ecore_status_t rc = ECORE_SUCCESS;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "icid = %08x\n", qp->icid);




 out_params->mtu = qp->mtu;
 out_params->dest_qp = qp->dest_qp;
 out_params->incoming_atomic_en = qp->incoming_atomic_en;
 out_params->e2e_flow_control_en = qp->e2e_flow_control_en;
 out_params->incoming_rdma_read_en = qp->incoming_rdma_read_en;
 out_params->incoming_rdma_write_en = qp->incoming_rdma_write_en;
 out_params->dgid = qp->dgid;
 out_params->flow_label = qp->flow_label;
 out_params->hop_limit_ttl = qp->hop_limit_ttl;
 out_params->traffic_class_tos = qp->traffic_class_tos;
 out_params->timeout = qp->ack_timeout;
 out_params->rnr_retry = qp->rnr_retry_cnt;
 out_params->retry_cnt = qp->retry_cnt;
 out_params->min_rnr_nak_timer = qp->min_rnr_nak_timer;
 out_params->pkey_index = 0;
 out_params->max_rd_atomic = qp->max_rd_atomic_req;
 out_params->max_dest_rd_atomic = qp->max_rd_atomic_resp;
 out_params->sqd_async = qp->sqd_async;

 if (IS_IWARP(p_hwfn))
  rc = ecore_iwarp_query_qp(qp, out_params);
 else
  rc = ecore_roce_query_qp(p_hwfn, qp, out_params);

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "Query QP, rc = %d\n", rc);
 return rc;
}
