
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_14__ {void* lo; void* hi; } ;
struct TYPE_12__ {void* lo; void* hi; } ;
struct roce_create_qp_req_ramrod_data {int orq_num_pages; scalar_t__ stats_counter_id; void* vlan_id; int udp_src_port; int local_mac_addr; int remote_mac_addr; void* dpi; void* low_latency_phy_queue; void* regular_latency_phy_queue; void* cq_cid; TYPE_5__ qp_handle_for_cqe; TYPE_3__ qp_handle_for_async; int dst_gid; int src_gid; int orq_pbl_addr; int sq_pbl_addr; void* sq_num_pages; void* pd; void* initial_psn; void* mtu; void* ack_timeout_val; void* dst_qp_id; void* flow_label; void* p_key; int hop_limit; int traffic_class; int max_ord; scalar_t__ flags; } ;
struct TYPE_11__ {struct roce_create_qp_req_ramrod_data roce_create_qp_req; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_sp_init_data {int cid; int opaque_fid; int comp_mode; } ;
struct TYPE_10__ {scalar_t__ req; } ;
struct TYPE_15__ {int hi; int lo; } ;
struct TYPE_13__ {int hi; int lo; } ;
struct ecore_rdma_qp {int icid; int orq_num_pages; int fmr_and_reserved_lkey; int signal_all; int retry_cnt; int rnr_retry_cnt; int flow_label; int dest_qp; int ack_timeout; int sq_psn; int sq_cq_id; int req_offloaded; int orq_phys_addr; int orq; TYPE_1__ cq_prod; scalar_t__ stats_queue; int vlan_id; int udp_src_port; int local_mac_addr; int remote_mac_addr; int dpi; TYPE_6__ qp_handle; TYPE_4__ qp_handle_async; int sq_pbl_ptr; int sq_num_pages; int pd; int mtu; int pkey; int hop_limit_ttl; int traffic_class_tos; int max_rd_atomic_req; int roce_mode; int has_req; } ;
struct TYPE_16__ {int opaque_fid; } ;
struct ecore_hwfn {int p_dev; TYPE_9__* p_rdma_info; TYPE_7__ hw_info; } ;
typedef int init_data ;
typedef enum roce_flavor { ____Placeholder_roce_flavor } roce_flavor ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_17__ {scalar_t__ dcqcn_enabled; } ;
struct TYPE_18__ {int proto; TYPE_8__ roce; } ;


 int DMA_REGPAIR_LE (int ,int ) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int) ;
 int ECORE_MSG_RDMA ;
 int ECORE_NOMEM ;
 int ECORE_RDMA_STATS_QUEUE ;
 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 void* OSAL_CPU_TO_LE16 (int ) ;
 void* OSAL_CPU_TO_LE32 (int) ;
 int OSAL_DMA_ALLOC_COHERENT (int ,int *,int) ;
 int OSAL_DMA_FREE_COHERENT (int ,int ,int ,int) ;
 int OSAL_MEMSET (struct ecore_sp_init_data*,int ,int) ;
 int OSAL_NULL ;
 int PQ_FLAGS_LLT ;
 int PQ_FLAGS_OFLD ;
 int PROTOCOLID_ROCE ;
 int RDMA_RING_PAGE_SIZE ;
 scalar_t__ RESC_START (struct ecore_hwfn*,int ) ;
 int ROCE_CREATE_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT ;
 int ROCE_CREATE_QP_REQ_RAMROD_DATA_FMR_AND_RESERVED_EN ;
 int ROCE_CREATE_QP_REQ_RAMROD_DATA_RNR_NAK_CNT ;
 int ROCE_CREATE_QP_REQ_RAMROD_DATA_ROCE_FLAVOR ;
 int ROCE_CREATE_QP_REQ_RAMROD_DATA_SIGNALED_COMP ;
 int ROCE_CREATE_QP_REQ_RAMROD_DATA_XRC_FLAG ;
 int ROCE_DCQCN_RP_MAX_QPS ;
 int ROCE_RAMROD_CREATE_QP ;
 int SET_FIELD (scalar_t__,int ,int) ;
 scalar_t__ ecore_cxt_get_proto_cid_start (struct ecore_hwfn*,int ) ;
 int ecore_get_cm_pq_idx (struct ecore_hwfn*,int ) ;
 int ecore_get_cm_pq_idx_rl (struct ecore_hwfn*,int) ;
 int ecore_rdma_copy_gids (struct ecore_rdma_qp*,int ,int ) ;
 int ecore_rdma_is_xrc_qp (struct ecore_rdma_qp*) ;
 int ecore_rdma_set_fw_mac (int ,int ) ;
 int ecore_roce_mode_to_flavor (int ) ;
 int ecore_roce_set_cid (struct ecore_hwfn*,scalar_t__) ;
 int ecore_sp_init_request (struct ecore_hwfn*,struct ecore_spq_entry**,int ,int ,struct ecore_sp_init_data*) ;
 int ecore_spq_post (struct ecore_hwfn*,struct ecore_spq_entry*,int ) ;

__attribute__((used)) static enum _ecore_status_t ecore_roce_sp_create_requester(
 struct ecore_hwfn *p_hwfn,
 struct ecore_rdma_qp *qp)
{
 struct roce_create_qp_req_ramrod_data *p_ramrod;
 u16 regular_latency_queue, low_latency_queue;
 struct ecore_sp_init_data init_data;
 enum roce_flavor roce_flavor;
 struct ecore_spq_entry *p_ent;
 enum _ecore_status_t rc;
 u32 cid_start;

 if (!qp->has_req)
  return ECORE_SUCCESS;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "icid = %08x\n", qp->icid);


 qp->orq_num_pages = 1;
 qp->orq = OSAL_DMA_ALLOC_COHERENT(p_hwfn->p_dev,
       &qp->orq_phys_addr,
       RDMA_RING_PAGE_SIZE);
 if (!qp->orq)
 {
  rc = ECORE_NOMEM;
  DP_NOTICE(p_hwfn, 0,
     "ecore create requester failed: cannot allocate memory (orq). rc = %d\n",
     rc);
  return rc;
 }


 OSAL_MEMSET(&init_data, 0, sizeof(init_data));
 init_data.cid = qp->icid + 1;
 init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
 init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

 rc = ecore_sp_init_request(p_hwfn, &p_ent,
       ROCE_RAMROD_CREATE_QP,
       PROTOCOLID_ROCE, &init_data);
 if (rc != ECORE_SUCCESS)
  goto err;

 p_ramrod = &p_ent->ramrod.roce_create_qp_req;

 p_ramrod->flags = 0;

 roce_flavor = ecore_roce_mode_to_flavor(qp->roce_mode);
 SET_FIELD(p_ramrod->flags,
    ROCE_CREATE_QP_REQ_RAMROD_DATA_ROCE_FLAVOR,
    roce_flavor);

 SET_FIELD(p_ramrod->flags,
    ROCE_CREATE_QP_REQ_RAMROD_DATA_FMR_AND_RESERVED_EN,
    qp->fmr_and_reserved_lkey);

 SET_FIELD(p_ramrod->flags,
    ROCE_CREATE_QP_REQ_RAMROD_DATA_SIGNALED_COMP,
    qp->signal_all);






 SET_FIELD(p_ramrod->flags,
    ROCE_CREATE_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT,
    qp->retry_cnt);

 SET_FIELD(p_ramrod->flags,
    ROCE_CREATE_QP_REQ_RAMROD_DATA_RNR_NAK_CNT,
    qp->rnr_retry_cnt);

 SET_FIELD(p_ramrod->flags,
    ROCE_CREATE_QP_REQ_RAMROD_DATA_XRC_FLAG,
    ecore_rdma_is_xrc_qp(qp));

 p_ramrod->max_ord = qp->max_rd_atomic_req;
 p_ramrod->traffic_class = qp->traffic_class_tos;
 p_ramrod->hop_limit = qp->hop_limit_ttl;
 p_ramrod->orq_num_pages = qp->orq_num_pages;
 p_ramrod->p_key = OSAL_CPU_TO_LE16(qp->pkey);
 p_ramrod->flow_label = OSAL_CPU_TO_LE32(qp->flow_label);
 p_ramrod->dst_qp_id = OSAL_CPU_TO_LE32(qp->dest_qp);
 p_ramrod->ack_timeout_val = OSAL_CPU_TO_LE32(qp->ack_timeout);
 p_ramrod->mtu = OSAL_CPU_TO_LE16(qp->mtu);
 p_ramrod->initial_psn = OSAL_CPU_TO_LE32(qp->sq_psn);
 p_ramrod->pd = OSAL_CPU_TO_LE16(qp->pd);
 p_ramrod->sq_num_pages = OSAL_CPU_TO_LE16(qp->sq_num_pages);
 DMA_REGPAIR_LE(p_ramrod->sq_pbl_addr, qp->sq_pbl_ptr);
 DMA_REGPAIR_LE(p_ramrod->orq_pbl_addr, qp->orq_phys_addr);
 ecore_rdma_copy_gids(qp, p_ramrod->src_gid, p_ramrod->dst_gid);
 p_ramrod->qp_handle_for_async.hi =
   OSAL_CPU_TO_LE32(qp->qp_handle_async.hi);
 p_ramrod->qp_handle_for_async.lo =
   OSAL_CPU_TO_LE32(qp->qp_handle_async.lo);
 p_ramrod->qp_handle_for_cqe.hi = OSAL_CPU_TO_LE32(qp->qp_handle.hi);
 p_ramrod->qp_handle_for_cqe.lo = OSAL_CPU_TO_LE32(qp->qp_handle.lo);
 p_ramrod->cq_cid = OSAL_CPU_TO_LE32((p_hwfn->hw_info.opaque_fid << 16) |
           qp->sq_cq_id);
  regular_latency_queue = ecore_get_cm_pq_idx(p_hwfn, PQ_FLAGS_OFLD);
 low_latency_queue = ecore_get_cm_pq_idx(p_hwfn, PQ_FLAGS_LLT);

 p_ramrod->regular_latency_phy_queue = OSAL_CPU_TO_LE16(regular_latency_queue);
 p_ramrod->low_latency_phy_queue = OSAL_CPU_TO_LE16(low_latency_queue);
 p_ramrod->dpi = OSAL_CPU_TO_LE16(qp->dpi);

 ecore_rdma_set_fw_mac(p_ramrod->remote_mac_addr, qp->remote_mac_addr);
 ecore_rdma_set_fw_mac(p_ramrod->local_mac_addr, qp->local_mac_addr);

 p_ramrod->udp_src_port = qp->udp_src_port;
 p_ramrod->vlan_id = OSAL_CPU_TO_LE16(qp->vlan_id);
 p_ramrod->stats_counter_id = RESC_START(p_hwfn, ECORE_RDMA_STATS_QUEUE) +
         qp->stats_queue;

 rc = ecore_spq_post(p_hwfn, p_ent, OSAL_NULL);

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "rc = %d\n", rc);

 if (rc != ECORE_SUCCESS)
  goto err;

 qp->req_offloaded = 1;
 qp->cq_prod.req = 0;

 cid_start = ecore_cxt_get_proto_cid_start(p_hwfn,
        p_hwfn->p_rdma_info->proto);
 ecore_roce_set_cid(p_hwfn, qp->icid + 1 - cid_start);

 return rc;

err:
 DP_NOTICE(p_hwfn, 0, "Create requested - failed, rc = %d\n", rc);
 OSAL_DMA_FREE_COHERENT(p_hwfn->p_dev,
          qp->orq,
          qp->orq_phys_addr,
          qp->orq_num_pages *
          RDMA_RING_PAGE_SIZE);
 return rc;
}
