#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_14__ {void* lo; void* hi; } ;
struct TYPE_12__ {void* lo; void* hi; } ;
struct roce_create_qp_req_ramrod_data {int orq_num_pages; scalar_t__ stats_counter_id; void* vlan_id; int /*<<< orphan*/  udp_src_port; int /*<<< orphan*/  local_mac_addr; int /*<<< orphan*/  remote_mac_addr; void* dpi; void* low_latency_phy_queue; void* regular_latency_phy_queue; void* cq_cid; TYPE_5__ qp_handle_for_cqe; TYPE_3__ qp_handle_for_async; int /*<<< orphan*/  dst_gid; int /*<<< orphan*/  src_gid; int /*<<< orphan*/  orq_pbl_addr; int /*<<< orphan*/  sq_pbl_addr; void* sq_num_pages; void* pd; void* initial_psn; void* mtu; void* ack_timeout_val; void* dst_qp_id; void* flow_label; void* p_key; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  max_ord; scalar_t__ flags; } ;
struct TYPE_11__ {struct roce_create_qp_req_ramrod_data roce_create_qp_req; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_sp_init_data {int cid; int opaque_fid; int /*<<< orphan*/  comp_mode; } ;
struct TYPE_10__ {scalar_t__ req; } ;
struct TYPE_15__ {int hi; int lo; } ;
struct TYPE_13__ {int hi; int lo; } ;
struct ecore_rdma_qp {int icid; int orq_num_pages; int fmr_and_reserved_lkey; int signal_all; int retry_cnt; int rnr_retry_cnt; int flow_label; int dest_qp; int ack_timeout; int sq_psn; int sq_cq_id; int req_offloaded; int /*<<< orphan*/  orq_phys_addr; int /*<<< orphan*/  orq; TYPE_1__ cq_prod; scalar_t__ stats_queue; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  udp_src_port; int /*<<< orphan*/  local_mac_addr; int /*<<< orphan*/  remote_mac_addr; int /*<<< orphan*/  dpi; TYPE_6__ qp_handle; TYPE_4__ qp_handle_async; int /*<<< orphan*/  sq_pbl_ptr; int /*<<< orphan*/  sq_num_pages; int /*<<< orphan*/  pd; int /*<<< orphan*/  mtu; int /*<<< orphan*/  pkey; int /*<<< orphan*/  hop_limit_ttl; int /*<<< orphan*/  traffic_class_tos; int /*<<< orphan*/  max_rd_atomic_req; int /*<<< orphan*/  roce_mode; int /*<<< orphan*/  has_req; } ;
struct TYPE_16__ {int opaque_fid; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; TYPE_9__* p_rdma_info; TYPE_7__ hw_info; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum roce_flavor { ____Placeholder_roce_flavor } roce_flavor ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_17__ {scalar_t__ dcqcn_enabled; } ;
struct TYPE_18__ {int /*<<< orphan*/  proto; TYPE_8__ roce; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int ECORE_NOMEM ; 
 int /*<<< orphan*/  ECORE_RDMA_STATS_QUEUE ; 
 int /*<<< orphan*/  ECORE_SPQ_MODE_EBLOCK ; 
 int ECORE_SUCCESS ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 int /*<<< orphan*/  PQ_FLAGS_LLT ; 
 int /*<<< orphan*/  PQ_FLAGS_OFLD ; 
 int /*<<< orphan*/  PROTOCOLID_ROCE ; 
 int RDMA_RING_PAGE_SIZE ; 
 scalar_t__ FUNC8 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ROCE_CREATE_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT ; 
 int /*<<< orphan*/  ROCE_CREATE_QP_REQ_RAMROD_DATA_FMR_AND_RESERVED_EN ; 
 int /*<<< orphan*/  ROCE_CREATE_QP_REQ_RAMROD_DATA_RNR_NAK_CNT ; 
 int /*<<< orphan*/  ROCE_CREATE_QP_REQ_RAMROD_DATA_ROCE_FLAVOR ; 
 int /*<<< orphan*/  ROCE_CREATE_QP_REQ_RAMROD_DATA_SIGNALED_COMP ; 
 int /*<<< orphan*/  ROCE_CREATE_QP_REQ_RAMROD_DATA_XRC_FLAG ; 
 int ROCE_DCQCN_RP_MAX_QPS ; 
 int /*<<< orphan*/  ROCE_RAMROD_CREATE_QP ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ecore_hwfn*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ecore_rdma_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct ecore_rdma_qp*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ecore_hwfn*,scalar_t__) ; 
 int FUNC18 (struct ecore_hwfn*,struct ecore_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_sp_init_data*) ; 
 int FUNC19 (struct ecore_hwfn*,struct ecore_spq_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum _ecore_status_t FUNC20(
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

	FUNC2(p_hwfn, ECORE_MSG_RDMA, "icid = %08x\n", qp->icid);

	/* Allocate DMA-able memory for ORQ */
	qp->orq_num_pages = 1;
	qp->orq = FUNC5(p_hwfn->p_dev,
					  &qp->orq_phys_addr,
					  RDMA_RING_PAGE_SIZE);
	if (!qp->orq)
	{
		rc = ECORE_NOMEM;
		FUNC1(p_hwfn, false,
			  "ecore create requester failed: cannot allocate memory (orq). rc = %d\n",
			  rc);
		return rc;
	}

	/* Get SPQ entry */
	FUNC7(&init_data, 0, sizeof(init_data));
	init_data.cid = qp->icid + 1;
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

	rc = FUNC18(p_hwfn, &p_ent,
				   ROCE_RAMROD_CREATE_QP,
				   PROTOCOLID_ROCE, &init_data);
	if (rc != ECORE_SUCCESS)
		goto err;

	p_ramrod = &p_ent->ramrod.roce_create_qp_req;

	p_ramrod->flags = 0;

	roce_flavor = FUNC16(qp->roce_mode);
	FUNC9(p_ramrod->flags,
		  ROCE_CREATE_QP_REQ_RAMROD_DATA_ROCE_FLAVOR,
		  roce_flavor);

	FUNC9(p_ramrod->flags,
		  ROCE_CREATE_QP_REQ_RAMROD_DATA_FMR_AND_RESERVED_EN,
		  qp->fmr_and_reserved_lkey);

	FUNC9(p_ramrod->flags,
		  ROCE_CREATE_QP_REQ_RAMROD_DATA_SIGNALED_COMP,
		  qp->signal_all);

	/* TBD:
	 * future use only
	 * #define ROCE_CREATE_QP_REQ_RAMROD_DATA_PRI_MASK
	 * #define ROCE_CREATE_QP_REQ_RAMROD_DATA_PRI_SHIFT
	 */
	FUNC9(p_ramrod->flags,
		  ROCE_CREATE_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT,
		  qp->retry_cnt);

	FUNC9(p_ramrod->flags,
		  ROCE_CREATE_QP_REQ_RAMROD_DATA_RNR_NAK_CNT,
		  qp->rnr_retry_cnt);

	FUNC9(p_ramrod->flags,
		  ROCE_CREATE_QP_REQ_RAMROD_DATA_XRC_FLAG,
		  FUNC14(qp));

	p_ramrod->max_ord = qp->max_rd_atomic_req;
	p_ramrod->traffic_class = qp->traffic_class_tos;
	p_ramrod->hop_limit = qp->hop_limit_ttl;
	p_ramrod->orq_num_pages = qp->orq_num_pages;
	p_ramrod->p_key = FUNC3(qp->pkey);
	p_ramrod->flow_label = FUNC4(qp->flow_label);
	p_ramrod->dst_qp_id = FUNC4(qp->dest_qp);
	p_ramrod->ack_timeout_val = FUNC4(qp->ack_timeout);
	p_ramrod->mtu = FUNC3(qp->mtu);
	p_ramrod->initial_psn = FUNC4(qp->sq_psn);
	p_ramrod->pd = FUNC3(qp->pd);
	p_ramrod->sq_num_pages = FUNC3(qp->sq_num_pages);
	FUNC0(p_ramrod->sq_pbl_addr, qp->sq_pbl_ptr);
	FUNC0(p_ramrod->orq_pbl_addr, qp->orq_phys_addr);
	FUNC13(qp, p_ramrod->src_gid, p_ramrod->dst_gid);
	p_ramrod->qp_handle_for_async.hi =
			FUNC4(qp->qp_handle_async.hi);
	p_ramrod->qp_handle_for_async.lo =
			FUNC4(qp->qp_handle_async.lo);
	p_ramrod->qp_handle_for_cqe.hi = FUNC4(qp->qp_handle.hi);
	p_ramrod->qp_handle_for_cqe.lo = FUNC4(qp->qp_handle.lo);
	p_ramrod->cq_cid = FUNC4((p_hwfn->hw_info.opaque_fid << 16) |
				       qp->sq_cq_id);

#ifdef CONFIG_DCQCN
	/* when dcqcn is enabled physical queues are determined accoridng to qp id */
	if (p_hwfn->p_rdma_info->roce.dcqcn_enabled)
		regular_latency_queue =
			ecore_get_cm_pq_idx_rl(p_hwfn,
					       (qp->icid >> 1) %
							ROCE_DCQCN_RP_MAX_QPS);
	else
#endif
		regular_latency_queue = FUNC11(p_hwfn, PQ_FLAGS_OFLD);
	low_latency_queue = FUNC11(p_hwfn, PQ_FLAGS_LLT);

	p_ramrod->regular_latency_phy_queue = FUNC3(regular_latency_queue);
	p_ramrod->low_latency_phy_queue = FUNC3(low_latency_queue);
	p_ramrod->dpi = FUNC3(qp->dpi);

	FUNC15(p_ramrod->remote_mac_addr, qp->remote_mac_addr);
	FUNC15(p_ramrod->local_mac_addr, qp->local_mac_addr);

	p_ramrod->udp_src_port = qp->udp_src_port;
	p_ramrod->vlan_id = FUNC3(qp->vlan_id);
	p_ramrod->stats_counter_id = FUNC8(p_hwfn, ECORE_RDMA_STATS_QUEUE) +
				     qp->stats_queue;

	rc = FUNC19(p_hwfn, p_ent, OSAL_NULL);

	FUNC2(p_hwfn, ECORE_MSG_RDMA, "rc = %d\n", rc);

	if (rc != ECORE_SUCCESS)
		goto err;

	qp->req_offloaded = true;
	qp->cq_prod.req = 0;

	cid_start = FUNC10(p_hwfn,
						  p_hwfn->p_rdma_info->proto);
	FUNC17(p_hwfn, qp->icid + 1 - cid_start);

	return rc;

err:
	FUNC1(p_hwfn, false, "Create requested - failed, rc = %d\n", rc);
	FUNC6(p_hwfn->p_dev,
			       qp->orq,
			       qp->orq_phys_addr,
			       qp->orq_num_pages *
			       RDMA_RING_PAGE_SIZE);
	return rc;
}