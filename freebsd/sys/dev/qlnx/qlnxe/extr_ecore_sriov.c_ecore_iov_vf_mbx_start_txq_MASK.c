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
typedef  int /*<<< orphan*/  vf_params ;
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct vfpf_start_txq_tlv {size_t tx_qid; int /*<<< orphan*/  pbl_size; int /*<<< orphan*/  pbl_addr; int /*<<< orphan*/  sb_index; int /*<<< orphan*/  hw_sb; } ;
struct ecore_vf_queue {TYPE_2__* cids; int /*<<< orphan*/  fw_tx_qid; } ;
struct ecore_iov_vf_mbx {TYPE_1__* req_virt; } ;
struct ecore_vf_info {int /*<<< orphan*/  relative_vf_id; int /*<<< orphan*/  opaque_fid; scalar_t__ abs_vf_id; int /*<<< orphan*/  vport_id; struct ecore_vf_queue* vf_queues; struct ecore_iov_vf_mbx vf_mbx; } ;
struct ecore_sb_info {size_t vf_qid; size_t vf_legacy; size_t qid_usage_idx; int /*<<< orphan*/  vfid; int /*<<< orphan*/  igu_sb_id; } ;
struct ecore_queue_start_common_params {int /*<<< orphan*/  sb_idx; struct ecore_sb_info* p_sb; scalar_t__ stats_id; int /*<<< orphan*/  vport_id; int /*<<< orphan*/  queue_id; } ;
struct ecore_queue_cid_vf_params {size_t vf_qid; size_t vf_legacy; size_t qid_usage_idx; int /*<<< orphan*/  vfid; int /*<<< orphan*/  igu_sb_id; } ;
struct ecore_queue_cid {int /*<<< orphan*/  cid; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef  int /*<<< orphan*/  sb_dummy ;
typedef  int /*<<< orphan*/  params ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {int b_is_tx; struct ecore_queue_cid* p_cid; } ;
struct TYPE_3__ {struct vfpf_start_txq_tlv start_txq; } ;

/* Variables and functions */
 size_t ECORE_IOV_QID_INVALID ; 
 int /*<<< orphan*/  ECORE_IOV_VALIDATE_Q_NA ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_queue_start_common_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_sb_info*,int) ; 
 struct ecore_queue_cid* OSAL_NULL ; 
 size_t PFVF_STATUS_FAILURE ; 
 size_t PFVF_STATUS_NO_RESOURCE ; 
 size_t PFVF_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_queue_cid*) ; 
 struct ecore_queue_cid* FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ,struct ecore_queue_start_common_params*,int,struct ecore_sb_info*) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_queue_cid*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*,struct ecore_vf_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*,struct ecore_vf_info*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (struct ecore_hwfn*,struct ecore_vf_info*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC10 (struct ecore_vf_info*) ; 

__attribute__((used)) static void FUNC11(struct ecore_hwfn *p_hwfn,
				       struct ecore_ptt *p_ptt,
				       struct ecore_vf_info *vf)
{
	struct ecore_queue_start_common_params params;
	struct ecore_queue_cid_vf_params vf_params;
	struct ecore_iov_vf_mbx *mbx = &vf->vf_mbx;
	u8 status = PFVF_STATUS_NO_RESOURCE;
	struct ecore_vf_queue *p_queue;
	struct vfpf_start_txq_tlv *req;
	struct ecore_queue_cid *p_cid;
	struct ecore_sb_info sb_dummy;
	u8 qid_usage_idx, vf_legacy;
	u32 cid = 0;
	enum _ecore_status_t rc;
	u16 pq;

	FUNC0(&params, 0, sizeof(params));
	req = &mbx->req_virt->start_txq;

	if (!FUNC7(p_hwfn, vf, req->tx_qid,
				    ECORE_IOV_VALIDATE_Q_NA) ||
	    !FUNC6(p_hwfn, vf, req->hw_sb))
		goto out;

	qid_usage_idx = FUNC8(p_hwfn, vf, true);
	if (qid_usage_idx == ECORE_IOV_QID_INVALID)
		goto out;

	p_queue = &vf->vf_queues[req->tx_qid];
	if (p_queue->cids[qid_usage_idx].p_cid)
		goto out;

	vf_legacy = FUNC10(vf);

	/* Acquire a new queue-cid */
	params.queue_id = p_queue->fw_tx_qid;
	params.vport_id = vf->vport_id;
	params.stats_id = vf->abs_vf_id + 0x10;

	/* Since IGU index is passed via sb_info, construct a dummy one */
	FUNC1(&sb_dummy, sizeof(sb_dummy));
	sb_dummy.igu_sb_id = req->hw_sb;
	params.p_sb = &sb_dummy;
	params.sb_idx = req->sb_index;

	FUNC1(&vf_params, sizeof(vf_params));
	vf_params.vfid = vf->relative_vf_id;
	vf_params.vf_qid = (u8)req->tx_qid;
	vf_params.vf_legacy = vf_legacy;
	vf_params.qid_usage_idx = qid_usage_idx;

	p_cid = FUNC3(p_hwfn, vf->opaque_fid,
				       &params, false, &vf_params);
	if (p_cid == OSAL_NULL)
		goto out;

	pq = FUNC5(p_hwfn,
				    vf->relative_vf_id);
	rc = FUNC4(p_hwfn, p_cid,
					req->pbl_addr, req->pbl_size, pq);
	if (rc != ECORE_SUCCESS) {
		status = PFVF_STATUS_FAILURE;
		FUNC2(p_hwfn, p_cid);
	} else {
		status = PFVF_STATUS_SUCCESS;
		p_queue->cids[qid_usage_idx].p_cid = p_cid;
		p_queue->cids[qid_usage_idx].b_is_tx = true;
		cid = p_cid->cid;
	}

out:
	FUNC9(p_hwfn, p_ptt, vf,
					cid, status);
}