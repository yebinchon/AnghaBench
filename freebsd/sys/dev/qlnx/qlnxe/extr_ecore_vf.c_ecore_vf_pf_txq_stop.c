
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfpf_stop_txqs_tlv {int num_txqs; int tx_qid; } ;
struct TYPE_6__ {scalar_t__ status; } ;
struct pfvf_def_resp_tlv {TYPE_3__ hdr; } ;
struct ecore_vf_iov {TYPE_2__* pf2vf_reply; int offset; } ;
struct TYPE_4__ {int queue_id; } ;
struct ecore_queue_cid {TYPE_1__ rel; } ;
struct ecore_hwfn {struct ecore_vf_iov* vf_iov_info; } ;
struct channel_list_end_tlv {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_5__ {struct pfvf_def_resp_tlv default_resp; } ;


 int CHANNEL_TLV_LIST_END ;
 int CHANNEL_TLV_STOP_TXQS ;
 int ECORE_INVAL ;
 scalar_t__ PFVF_STATUS_SUCCESS ;
 int ecore_add_tlv (int *,int ,int) ;
 int ecore_send_msg2pf (struct ecore_hwfn*,scalar_t__*,int) ;
 int ecore_vf_pf_add_qid (struct ecore_hwfn*,struct ecore_queue_cid*) ;
 struct vfpf_stop_txqs_tlv* ecore_vf_pf_prep (struct ecore_hwfn*,int ,int) ;
 int ecore_vf_pf_req_end (struct ecore_hwfn*,int) ;

enum _ecore_status_t ecore_vf_pf_txq_stop(struct ecore_hwfn *p_hwfn,
       struct ecore_queue_cid *p_cid)
{
 struct ecore_vf_iov *p_iov = p_hwfn->vf_iov_info;
 struct vfpf_stop_txqs_tlv *req;
 struct pfvf_def_resp_tlv *resp;
 enum _ecore_status_t rc;


 req = ecore_vf_pf_prep(p_hwfn, CHANNEL_TLV_STOP_TXQS, sizeof(*req));

 req->tx_qid = p_cid->rel.queue_id;
 req->num_txqs = 1;

 ecore_vf_pf_add_qid(p_hwfn, p_cid);


 ecore_add_tlv(&p_iov->offset,
        CHANNEL_TLV_LIST_END,
        sizeof(struct channel_list_end_tlv));

 resp = &p_iov->pf2vf_reply->default_resp;
 rc = ecore_send_msg2pf(p_hwfn, &resp->hdr.status, sizeof(*resp));
 if (rc)
  goto exit;

 if (resp->hdr.status != PFVF_STATUS_SUCCESS) {
  rc = ECORE_INVAL;
  goto exit;
 }

exit:
 ecore_vf_pf_req_end(p_hwfn, rc);

 return rc;
}
