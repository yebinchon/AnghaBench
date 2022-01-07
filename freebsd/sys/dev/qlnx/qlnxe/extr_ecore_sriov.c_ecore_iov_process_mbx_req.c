
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct pfvf_def_resp_tlv {int dummy; } ;
struct TYPE_8__ {scalar_t__ reply_address; } ;
struct TYPE_9__ {TYPE_2__ first_tlv; } ;
struct TYPE_12__ {scalar_t__ response_offset; int mbx_state; } ;
struct TYPE_10__ {int type; int length; } ;
struct TYPE_11__ {scalar_t__ reply_address; TYPE_4__ tl; int padding; } ;
struct ecore_iov_vf_mbx {int b_pending_msg; TYPE_6__ sw_mbx; TYPE_5__ first_tlv; TYPE_1__* req_virt; } ;
struct ecore_vf_info {int abs_vf_id; TYPE_3__ acquire; int b_malicious; int relative_vf_id; struct ecore_iov_vf_mbx vf_mbx; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_7__ {TYPE_5__ first_tlv; } ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int ,...) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,...) ;
 int ECORE_MSG_IOV ;
 int OSAL_IOV_VF_MSG_TYPE (struct ecore_hwfn*,int ,int) ;
 int PFVF_STATUS_MALICIOUS ;
 int PFVF_STATUS_NOT_SUPPORTED ;
 int VF_PF_RESPONSE_READY ;
 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int ,int) ;
 int ecore_iov_lock_vf_pf_channel (struct ecore_hwfn*,struct ecore_vf_info*,int) ;
 int ecore_iov_prepare_resp (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int const,int,int ) ;
 scalar_t__ ecore_iov_tlv_supported (int) ;
 int ecore_iov_unlock_vf_pf_channel (struct ecore_hwfn*,struct ecore_vf_info*,int const) ;
 int ecore_iov_vf_mbx_acquire (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 int ecore_iov_vf_mbx_close (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 int ecore_iov_vf_mbx_int_cleanup (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 int ecore_iov_vf_mbx_release (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 int ecore_iov_vf_mbx_start_rxq (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 int ecore_iov_vf_mbx_start_txq (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 int ecore_iov_vf_mbx_start_vport (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 int ecore_iov_vf_mbx_stop_rxqs (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 int ecore_iov_vf_mbx_stop_txqs (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 int ecore_iov_vf_mbx_stop_vport (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 int ecore_iov_vf_mbx_ucast_filter (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 int ecore_iov_vf_mbx_update_rxqs (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 int ecore_iov_vf_mbx_update_tunn_param (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 int ecore_iov_vf_mbx_vport_update (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 int ecore_iov_vf_pf_get_coalesce (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;
 int ecore_iov_vf_pf_set_coalesce (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ;

void ecore_iov_process_mbx_req(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt,
          int vfid)
{
 struct ecore_iov_vf_mbx *mbx;
 struct ecore_vf_info *p_vf;

 p_vf = ecore_iov_get_vf_info(p_hwfn, (u16)vfid, 1);
 if (!p_vf)
  return;

 mbx = &p_vf->vf_mbx;



 if (!mbx->b_pending_msg) {
  DP_NOTICE(p_hwfn, 1,
     "VF[%02x]: Trying to process mailbox message when none is pending\n",
     p_vf->abs_vf_id);
  return;
 }
 mbx->b_pending_msg = 0;


 mbx->first_tlv = mbx->req_virt->first_tlv;

 DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
     "VF[%02x]: Processing mailbox message [type %04x]\n",
     p_vf->abs_vf_id, mbx->first_tlv.tl.type);

 OSAL_IOV_VF_MSG_TYPE(p_hwfn,
                             p_vf->relative_vf_id,
                             mbx->first_tlv.tl.type);




 ecore_iov_lock_vf_pf_channel(p_hwfn, p_vf,
         mbx->first_tlv.tl.type);


 if (ecore_iov_tlv_supported(mbx->first_tlv.tl.type) &&
     !p_vf->b_malicious) {

  switch (mbx->first_tlv.tl.type) {
  case 143:
   ecore_iov_vf_mbx_acquire(p_hwfn, p_ptt, p_vf);
   break;
  case 130:
   ecore_iov_vf_mbx_start_vport(p_hwfn, p_ptt, p_vf);
   break;
  case 129:
   ecore_iov_vf_mbx_stop_vport(p_hwfn, p_ptt, p_vf);
   break;
  case 137:
   ecore_iov_vf_mbx_start_rxq(p_hwfn, p_ptt, p_vf);
   break;
  case 136:
   ecore_iov_vf_mbx_start_txq(p_hwfn, p_ptt, p_vf);
   break;
  case 135:
   ecore_iov_vf_mbx_stop_rxqs(p_hwfn, p_ptt, p_vf);
   break;
  case 134:
   ecore_iov_vf_mbx_stop_txqs(p_hwfn, p_ptt, p_vf);
   break;
  case 132:
   ecore_iov_vf_mbx_update_rxqs(p_hwfn, p_ptt, p_vf);
   break;
  case 128:
   ecore_iov_vf_mbx_vport_update(p_hwfn, p_ptt, p_vf);
   break;
  case 133:
   ecore_iov_vf_mbx_ucast_filter(p_hwfn, p_ptt, p_vf);
   break;
  case 142:
   ecore_iov_vf_mbx_close(p_hwfn, p_ptt, p_vf);
   break;
  case 139:
   ecore_iov_vf_mbx_int_cleanup(p_hwfn, p_ptt, p_vf);
   break;
  case 138:
   ecore_iov_vf_mbx_release(p_hwfn, p_ptt, p_vf);
   break;
  case 131:
   ecore_iov_vf_mbx_update_tunn_param(p_hwfn, p_ptt, p_vf);
   break;
  case 140:
   ecore_iov_vf_pf_set_coalesce(p_hwfn, p_ptt, p_vf);
   break;
  case 141:
   ecore_iov_vf_pf_get_coalesce(p_hwfn, p_ptt, p_vf);
   break;
  }
 } else if (ecore_iov_tlv_supported(mbx->first_tlv.tl.type)) {





  if (mbx->first_tlv.tl.type == 138) {

   DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
       "VF [%02x] - considered malicious, but wanted to RELEASE. TODO\n",
       p_vf->abs_vf_id);
  } else {
   DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
       "VF [%02x] - considered malicious; Ignoring TLV [%04x]\n",
       p_vf->abs_vf_id, mbx->first_tlv.tl.type);
  }

  ecore_iov_prepare_resp(p_hwfn, p_ptt, p_vf,
           mbx->first_tlv.tl.type,
           sizeof(struct pfvf_def_resp_tlv),
           PFVF_STATUS_MALICIOUS);
 } else {






  DP_NOTICE(p_hwfn, 0,
     "VF[%02x]: unknown TLV. type %04x length %04x padding %08x reply address %llu\n",
     p_vf->abs_vf_id,
     mbx->first_tlv.tl.type,
     mbx->first_tlv.tl.length,
     mbx->first_tlv.padding,
     (unsigned long long)mbx->first_tlv.reply_address);




  if (p_vf->acquire.first_tlv.reply_address &&
      (mbx->first_tlv.reply_address ==
       p_vf->acquire.first_tlv.reply_address))
   ecore_iov_prepare_resp(p_hwfn, p_ptt, p_vf,
            mbx->first_tlv.tl.type,
            sizeof(struct pfvf_def_resp_tlv),
            PFVF_STATUS_NOT_SUPPORTED);
  else
   DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
       "VF[%02x]: Can't respond to TLV - no valid reply address\n",
       p_vf->abs_vf_id);
 }

 ecore_iov_unlock_vf_pf_channel(p_hwfn, p_vf,
           mbx->first_tlv.tl.type);





}
