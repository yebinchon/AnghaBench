
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct vfpf_update_rxq_tlv {int num_rxqs; int flags; int rx_qid; } ;
struct TYPE_6__ {scalar_t__ status; } ;
struct pfvf_def_resp_tlv {TYPE_3__ hdr; } ;
struct ecore_vf_iov {int offset; TYPE_1__* pf2vf_reply; } ;
struct TYPE_5__ {int queue_id; } ;
struct ecore_queue_cid {TYPE_2__ rel; } ;
struct ecore_hwfn {struct ecore_vf_iov* vf_iov_info; } ;
struct channel_list_end_tlv {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {struct pfvf_def_resp_tlv default_resp; } ;


 int CHANNEL_TLV_LIST_END ;
 int CHANNEL_TLV_UPDATE_RXQ ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_INVAL ;
 scalar_t__ PFVF_STATUS_SUCCESS ;
 int VFPF_RXQ_UPD_COMPLETE_CQE_FLAG ;
 int VFPF_RXQ_UPD_COMPLETE_EVENT_FLAG ;
 int ecore_add_tlv (int *,int ,int) ;
 int ecore_send_msg2pf (struct ecore_hwfn*,scalar_t__*,int) ;
 int ecore_vf_pf_add_qid (struct ecore_hwfn*,struct ecore_queue_cid*) ;
 struct vfpf_update_rxq_tlv* ecore_vf_pf_prep (struct ecore_hwfn*,int ,int) ;
 int ecore_vf_pf_req_end (struct ecore_hwfn*,int) ;

enum _ecore_status_t ecore_vf_pf_rxqs_update(struct ecore_hwfn *p_hwfn,
          struct ecore_queue_cid **pp_cid,
          u8 num_rxqs,
          u8 comp_cqe_flg,
          u8 comp_event_flg)
{
 struct ecore_vf_iov *p_iov = p_hwfn->vf_iov_info;
 struct pfvf_def_resp_tlv *resp = &p_iov->pf2vf_reply->default_resp;
 struct vfpf_update_rxq_tlv *req;
 enum _ecore_status_t rc;






 if (num_rxqs != 1) {
  DP_NOTICE(p_hwfn, 1,
     "VFs can no longer update more than a single queue\n");
  return ECORE_INVAL;
 }


 req = ecore_vf_pf_prep(p_hwfn, CHANNEL_TLV_UPDATE_RXQ, sizeof(*req));

 req->rx_qid = (*pp_cid)->rel.queue_id;
 req->num_rxqs = 1;

 if (comp_cqe_flg)
  req->flags |= VFPF_RXQ_UPD_COMPLETE_CQE_FLAG;
 if (comp_event_flg)
  req->flags |= VFPF_RXQ_UPD_COMPLETE_EVENT_FLAG;

 ecore_vf_pf_add_qid(p_hwfn, *pp_cid);


 ecore_add_tlv(&p_iov->offset,
        CHANNEL_TLV_LIST_END,
        sizeof(struct channel_list_end_tlv));

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
