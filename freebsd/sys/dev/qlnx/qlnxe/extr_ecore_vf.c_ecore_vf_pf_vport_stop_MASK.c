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
struct vfpf_first_tlv {int dummy; } ;
struct TYPE_3__ {scalar_t__ status; } ;
struct pfvf_def_resp_tlv {TYPE_1__ hdr; } ;
struct ecore_vf_iov {int /*<<< orphan*/  offset; TYPE_2__* pf2vf_reply; } ;
struct ecore_hwfn {struct ecore_vf_iov* vf_iov_info; } ;
struct channel_list_end_tlv {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {struct pfvf_def_resp_tlv default_resp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_TLV_LIST_END ; 
 int /*<<< orphan*/  CHANNEL_TLV_VPORT_TEARDOWN ; 
 int ECORE_INVAL ; 
 scalar_t__ PFVF_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ecore_hwfn*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,int) ; 

enum _ecore_status_t FUNC4(struct ecore_hwfn *p_hwfn)
{
	struct ecore_vf_iov *p_iov = p_hwfn->vf_iov_info;
	struct pfvf_def_resp_tlv *resp  = &p_iov->pf2vf_reply->default_resp;
	enum _ecore_status_t rc;

	/* clear mailbox and prep first tlv */
	FUNC2(p_hwfn, CHANNEL_TLV_VPORT_TEARDOWN,
			 sizeof(struct vfpf_first_tlv));

	/* add list termination tlv */
	FUNC0(&p_iov->offset,
		      CHANNEL_TLV_LIST_END,
		      sizeof(struct channel_list_end_tlv));

	rc = FUNC1(p_hwfn, &resp->hdr.status, sizeof(*resp));
	if (rc)
		goto exit;

	if (resp->hdr.status != PFVF_STATUS_SUCCESS) {
		rc = ECORE_INVAL;
		goto exit;
	}

exit:
	FUNC3(p_hwfn, rc);

	return rc;
}