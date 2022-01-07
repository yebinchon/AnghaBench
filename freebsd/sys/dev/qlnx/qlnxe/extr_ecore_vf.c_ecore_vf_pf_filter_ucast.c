
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct vfpf_ucast_filter_tlv {int vlan; int mac; void* type; void* opcode; } ;
struct TYPE_4__ {scalar_t__ status; } ;
struct pfvf_def_resp_tlv {TYPE_2__ hdr; } ;
struct ecore_vf_iov {TYPE_1__* pf2vf_reply; int offset; } ;
struct ecore_hwfn {struct ecore_vf_iov* vf_iov_info; } ;
struct ecore_filter_ucast {scalar_t__ opcode; int vlan; int mac; scalar_t__ type; } ;
struct channel_list_end_tlv {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {struct pfvf_def_resp_tlv default_resp; } ;


 int CHANNEL_TLV_LIST_END ;
 int CHANNEL_TLV_UCAST_FILTER ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_AGAIN ;
 scalar_t__ ECORE_FILTER_MOVE ;
 int ECORE_INVAL ;
 int ETH_ALEN ;
 int OSAL_MEMCPY (int ,int ,int ) ;
 scalar_t__ PFVF_STATUS_SUCCESS ;
 int ecore_add_tlv (int *,int ,int) ;
 int ecore_send_msg2pf (struct ecore_hwfn*,scalar_t__*,int) ;
 struct vfpf_ucast_filter_tlv* ecore_vf_pf_prep (struct ecore_hwfn*,int ,int) ;
 int ecore_vf_pf_req_end (struct ecore_hwfn*,int) ;

enum _ecore_status_t ecore_vf_pf_filter_ucast(struct ecore_hwfn *p_hwfn,
           struct ecore_filter_ucast *p_ucast)
{
 struct ecore_vf_iov *p_iov = p_hwfn->vf_iov_info;
 struct vfpf_ucast_filter_tlv *req;
 struct pfvf_def_resp_tlv *resp;
 enum _ecore_status_t rc;



 if (p_ucast->opcode == ECORE_FILTER_MOVE) {
  DP_NOTICE(p_hwfn, 1, "VFs don't support Moving of filters\n");
  return ECORE_INVAL;
 }



 req = ecore_vf_pf_prep(p_hwfn, CHANNEL_TLV_UCAST_FILTER, sizeof(*req));
 req->opcode = (u8)p_ucast->opcode;
 req->type = (u8)p_ucast->type;
 OSAL_MEMCPY(req->mac, p_ucast->mac, ETH_ALEN);
 req->vlan = p_ucast->vlan;


 ecore_add_tlv(&p_iov->offset,
        CHANNEL_TLV_LIST_END,
        sizeof(struct channel_list_end_tlv));

 resp = &p_iov->pf2vf_reply->default_resp;
 rc = ecore_send_msg2pf(p_hwfn, &resp->hdr.status, sizeof(*resp));
 if (rc)
  goto exit;

 if (resp->hdr.status != PFVF_STATUS_SUCCESS) {
  rc = ECORE_AGAIN;
  goto exit;
 }

exit:
 ecore_vf_pf_req_end(p_hwfn, rc);

 return rc;
}
