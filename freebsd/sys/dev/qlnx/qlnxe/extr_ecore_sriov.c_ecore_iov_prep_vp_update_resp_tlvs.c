
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union pfvf_tlvs {int dummy; } pfvf_tlvs ;
typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int status; } ;
struct pfvf_def_resp_tlv {TYPE_1__ hdr; } ;
struct ecore_vf_info {int relative_vf_id; } ;
struct ecore_iov_vf_mbx {int * offset; scalar_t__ reply_virt; } ;
struct ecore_hwfn {int dummy; } ;
struct channel_list_end_tlv {int dummy; } ;


 int CHANNEL_TLV_LIST_END ;
 int CHANNEL_TLV_VPORT_UPDATE ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int ,int ) ;
 int ECORE_IOV_VP_UPDATE_MAX ;
 int ECORE_MSG_IOV ;
 int OSAL_MEMSET (scalar_t__,int ,int) ;
 int PFVF_STATUS_NOT_SUPPORTED ;
 struct pfvf_def_resp_tlv* ecore_add_tlv (int **,int ,int) ;
 int ecore_iov_vport_to_tlv (int) ;

__attribute__((used)) static u16 ecore_iov_prep_vp_update_resp_tlvs(struct ecore_hwfn *p_hwfn,
           struct ecore_vf_info *p_vf,
           struct ecore_iov_vf_mbx *p_mbx,
           u8 status, u16 tlvs_mask,
           u16 tlvs_accepted)
{
 struct pfvf_def_resp_tlv *resp;
 u16 size, total_len, i;

 OSAL_MEMSET(p_mbx->reply_virt, 0, sizeof(union pfvf_tlvs));
 p_mbx->offset = (u8 *)p_mbx->reply_virt;
 size = sizeof(struct pfvf_def_resp_tlv);
 total_len = size;

 ecore_add_tlv(&p_mbx->offset, CHANNEL_TLV_VPORT_UPDATE, size);


 for (i = 0; i < ECORE_IOV_VP_UPDATE_MAX; i++) {
  if (!(tlvs_mask & (1 << i)))
   continue;

  resp = ecore_add_tlv(&p_mbx->offset, ecore_iov_vport_to_tlv(i),
         size);

  if (tlvs_accepted & (1 << i))
   resp->hdr.status = status;
  else
   resp->hdr.status = PFVF_STATUS_NOT_SUPPORTED;

  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "VF[%d] - vport_update response: TLV %d, status %02x\n",
      p_vf->relative_vf_id,
      ecore_iov_vport_to_tlv(i),
      resp->hdr.status);

  total_len += size;
 }

 ecore_add_tlv(&p_mbx->offset, CHANNEL_TLV_LIST_END,
        sizeof(struct channel_list_end_tlv));

 return total_len;
}
