#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct roce_modify_qp_req_ramrod_data {int /*<<< orphan*/  dst_gid; int /*<<< orphan*/  src_gid; void* mtu; void* ack_timeout_val; void* flow_label; void* p_key; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  max_ord; scalar_t__ fields; scalar_t__ flags; } ;
struct TYPE_4__ {struct roce_modify_qp_req_ramrod_data roce_modify_qp_req; } ;
struct ecore_spq_entry {TYPE_2__ ramrod; } ;
struct ecore_sp_init_data {int cid; int /*<<< orphan*/  comp_mode; int /*<<< orphan*/  opaque_fid; } ;
struct ecore_rdma_qp {int icid; int sqd_async; int retry_cnt; int rnr_retry_cnt; int /*<<< orphan*/  mtu; int /*<<< orphan*/  ack_timeout; int /*<<< orphan*/  flow_label; int /*<<< orphan*/  pkey; int /*<<< orphan*/  hop_limit_ttl; int /*<<< orphan*/  traffic_class_tos; int /*<<< orphan*/  max_rd_atomic_req; int /*<<< orphan*/  req_offloaded; int /*<<< orphan*/  has_req; } ;
struct TYPE_3__ {int /*<<< orphan*/  opaque_fid; } ;
struct ecore_hwfn {TYPE_1__ hw_info; } ;
typedef  int /*<<< orphan*/  init_data ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ECORE_MSG_RDMA ; 
 int /*<<< orphan*/  ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_REQ ; 
 int /*<<< orphan*/  ECORE_ROCE_MODIFY_QP_VALID_ACK_TIMEOUT ; 
 int /*<<< orphan*/  ECORE_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR ; 
 int /*<<< orphan*/  ECORE_ROCE_MODIFY_QP_VALID_PKEY ; 
 int /*<<< orphan*/  ECORE_ROCE_MODIFY_QP_VALID_RETRY_CNT ; 
 int /*<<< orphan*/  ECORE_ROCE_MODIFY_QP_VALID_RNR_RETRY_CNT ; 
 int /*<<< orphan*/  ECORE_SPQ_MODE_EBLOCK ; 
 int ECORE_SUCCESS ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_sp_init_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 int /*<<< orphan*/  PROTOCOLID_ROCE ; 
 int /*<<< orphan*/  ROCE_EVENT_MODIFY_QP ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_REQ_RAMROD_DATA_ACK_TIMEOUT_FLG ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_REQ_RAMROD_DATA_ADDRESS_VECTOR_FLG ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_REQ_RAMROD_DATA_EN_SQD_ASYNC_NOTIFY ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT_FLG ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_REQ_RAMROD_DATA_MAX_ORD_FLG ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_REQ_RAMROD_DATA_MOVE_TO_ERR_FLG ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_REQ_RAMROD_DATA_MOVE_TO_SQD_FLG ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_REQ_RAMROD_DATA_P_KEY_FLG ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_REQ_RAMROD_DATA_RNR_NAK_CNT ; 
 int /*<<< orphan*/  ROCE_MODIFY_QP_REQ_RAMROD_DATA_RNR_NAK_CNT_FLG ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_rdma_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ecore_hwfn*,struct ecore_spq_entry**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_sp_init_data*) ; 
 int FUNC9 (struct ecore_hwfn*,struct ecore_spq_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum _ecore_status_t FUNC10(
	struct ecore_hwfn	*p_hwfn,
	struct ecore_rdma_qp	*qp,
	bool			move_to_sqd,
	bool			move_to_err,
	u32			modify_flags)
{
	struct roce_modify_qp_req_ramrod_data	*p_ramrod;
	struct ecore_sp_init_data		init_data;
	struct ecore_spq_entry			*p_ent;
	enum _ecore_status_t			rc;

	if (!qp->has_req)
		return ECORE_SUCCESS;

	FUNC1(p_hwfn, ECORE_MSG_RDMA, "icid = %08x\n", qp->icid);

	if (move_to_err && !(qp->req_offloaded))
		return ECORE_SUCCESS;

	/* Get SPQ entry */
	FUNC5(&init_data, 0, sizeof(init_data));
	init_data.cid = qp->icid + 1;
	init_data.opaque_fid = p_hwfn->hw_info.opaque_fid;
	init_data.comp_mode = ECORE_SPQ_MODE_EBLOCK;

	rc = FUNC8(p_hwfn, &p_ent,
				   ROCE_EVENT_MODIFY_QP,
				   PROTOCOLID_ROCE, &init_data);
	if (rc != ECORE_SUCCESS) {
		FUNC0(p_hwfn, false, "rc = %d\n", rc);
		return rc;
	}

	p_ramrod = &p_ent->ramrod.roce_modify_qp_req;

	p_ramrod->flags = 0;

	FUNC6(p_ramrod->flags,
		  ROCE_MODIFY_QP_REQ_RAMROD_DATA_MOVE_TO_ERR_FLG,
		  move_to_err);

	FUNC6(p_ramrod->flags,
		  ROCE_MODIFY_QP_REQ_RAMROD_DATA_MOVE_TO_SQD_FLG,
		  move_to_sqd);

	FUNC6(p_ramrod->flags,
		  ROCE_MODIFY_QP_REQ_RAMROD_DATA_EN_SQD_ASYNC_NOTIFY,
		  qp->sqd_async);

	FUNC6(p_ramrod->flags,
		  ROCE_MODIFY_QP_REQ_RAMROD_DATA_P_KEY_FLG,
		  FUNC2(modify_flags, ECORE_ROCE_MODIFY_QP_VALID_PKEY));

	FUNC6(p_ramrod->flags,
		  ROCE_MODIFY_QP_REQ_RAMROD_DATA_ADDRESS_VECTOR_FLG,
		  FUNC2(modify_flags,
			    ECORE_ROCE_MODIFY_QP_VALID_ADDRESS_VECTOR));

	FUNC6(p_ramrod->flags,
		  ROCE_MODIFY_QP_REQ_RAMROD_DATA_MAX_ORD_FLG,
		  FUNC2(modify_flags,
			    ECORE_RDMA_MODIFY_QP_VALID_MAX_RD_ATOMIC_REQ));

	FUNC6(p_ramrod->flags,
		  ROCE_MODIFY_QP_REQ_RAMROD_DATA_RNR_NAK_CNT_FLG,
		  FUNC2(modify_flags,
			    ECORE_ROCE_MODIFY_QP_VALID_RNR_RETRY_CNT));

	FUNC6(p_ramrod->flags,
		  ROCE_MODIFY_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT_FLG,
		  FUNC2(modify_flags,
			    ECORE_ROCE_MODIFY_QP_VALID_RETRY_CNT));

	FUNC6(p_ramrod->flags,
		  ROCE_MODIFY_QP_REQ_RAMROD_DATA_ACK_TIMEOUT_FLG,
		  FUNC2(modify_flags,
			    ECORE_ROCE_MODIFY_QP_VALID_ACK_TIMEOUT));

	/* TBD: future use only
	 * #define ROCE_MODIFY_QP_REQ_RAMROD_DATA_PRI_FLG_MASK
	 * #define ROCE_MODIFY_QP_REQ_RAMROD_DATA_PRI_FLG_SHIFT
	 */

	p_ramrod->fields = 0;
	FUNC6(p_ramrod->fields,
		  ROCE_MODIFY_QP_REQ_RAMROD_DATA_ERR_RETRY_CNT,
		  qp->retry_cnt);

	FUNC6(p_ramrod->fields,
		  ROCE_MODIFY_QP_REQ_RAMROD_DATA_RNR_NAK_CNT,
		  qp->rnr_retry_cnt);

	p_ramrod->max_ord = qp->max_rd_atomic_req;
	p_ramrod->traffic_class = qp->traffic_class_tos;
	p_ramrod->hop_limit = qp->hop_limit_ttl;
	p_ramrod->p_key = FUNC3(qp->pkey);
	p_ramrod->flow_label = FUNC4(qp->flow_label);
	p_ramrod->ack_timeout_val = FUNC4(qp->ack_timeout);
	p_ramrod->mtu = FUNC3(qp->mtu);
	FUNC7(qp, p_ramrod->src_gid, p_ramrod->dst_gid);
	rc = FUNC9(p_hwfn, p_ent, OSAL_NULL);

	FUNC1(p_hwfn, ECORE_MSG_RDMA, "Modify requester, rc = %d\n", rc);
	return rc;
}