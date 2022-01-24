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
struct vfpf_qid_tlv {int /*<<< orphan*/  qid; } ;
struct TYPE_3__ {int capabilities; } ;
struct TYPE_4__ {TYPE_1__ pfdev_info; } ;
struct ecore_vf_iov {int /*<<< orphan*/  offset; TYPE_2__ acquire_resp; } ;
struct ecore_queue_cid {int /*<<< orphan*/  qid_usage_idx; } ;
struct ecore_hwfn {struct ecore_vf_iov* vf_iov_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_TLV_QID ; 
 int PFVF_ACQUIRE_CAP_QUEUE_QIDS ; 
 struct vfpf_qid_tlv* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct ecore_hwfn *p_hwfn,
				struct ecore_queue_cid *p_cid)
{
	struct ecore_vf_iov *p_iov = p_hwfn->vf_iov_info;
	struct vfpf_qid_tlv *p_qid_tlv;

	/* Only add QIDs for the queue if it was negotiated with PF */
	if (!(p_iov->acquire_resp.pfdev_info.capabilities &
	      PFVF_ACQUIRE_CAP_QUEUE_QIDS))
		return;

	p_qid_tlv = FUNC0(&p_iov->offset,
				  CHANNEL_TLV_QID, sizeof(*p_qid_tlv));
	p_qid_tlv->qid = p_cid->qid_usage_idx;
}