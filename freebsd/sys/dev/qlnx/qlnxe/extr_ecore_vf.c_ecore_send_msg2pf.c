
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


struct TYPE_11__ {int type; } ;
struct TYPE_12__ {TYPE_5__ tl; } ;
union vfpf_tlvs {TYPE_6__ first_tlv; } ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_8__ {int hi; int lo; } ;
struct TYPE_9__ {TYPE_2__ vf_pf_msg_addr; } ;
struct ustorm_vf_zone {int trigger; TYPE_3__ non_trigger; } ;
struct ustorm_trigger_vf_zone {int vf_pf_msg_valid; } ;
struct TYPE_7__ {int concrete_fid; } ;
struct ecore_hwfn {int p_dev; TYPE_4__* vf_iov_info; TYPE_1__ hw_info; } ;
struct channel_list_end_tlv {int dummy; } ;
typedef int osal_uintptr_t ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_10__ {int vf2pf_request_phys; int pf2vf_reply; int b_hw_channel; union vfpf_tlvs* vf2pf_request; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,scalar_t__,...) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,scalar_t__,int,...) ;
 int ECORE_MSG_IOV ;
 int ECORE_SUCCESS ;
 int ECORE_TIMEOUT ;
 int GET_FIELD (int ,int ) ;
 int OSAL_MEMSET (struct ustorm_trigger_vf_zone*,int ,int) ;
 int OSAL_MSLEEP (int) ;
 int OSAL_VF_SEND_MSG2PF (int ,scalar_t__*,union vfpf_tlvs*,int ,int,int) ;
 int OSAL_WMB (int ) ;
 scalar_t__ PFVF_STATUS_NO_RESOURCE ;
 scalar_t__ PFVF_STATUS_SUCCESS ;
 int PXP_CONCRETE_FID_PFID ;
 scalar_t__ PXP_VF_BAR0_START_USDM_ZONE_B ;
 int REG_WR (struct ecore_hwfn*,int ,int) ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int ecore_dp_tlv_list (struct ecore_hwfn*,union vfpf_tlvs*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_send_msg2pf(struct ecore_hwfn *p_hwfn,
    u8 *done, u32 resp_size)
{
 union vfpf_tlvs *p_req = p_hwfn->vf_iov_info->vf2pf_request;
 struct ustorm_trigger_vf_zone trigger;
 struct ustorm_vf_zone *zone_data;
 enum _ecore_status_t rc = ECORE_SUCCESS;
 int time = 100;

 zone_data = (struct ustorm_vf_zone *)PXP_VF_BAR0_START_USDM_ZONE_B;


 ecore_dp_tlv_list(p_hwfn, p_req);


 resp_size += sizeof(struct channel_list_end_tlv);
 OSAL_MEMSET(&trigger, 0, sizeof(struct ustorm_trigger_vf_zone));
 trigger.vf_pf_msg_valid = 1;

 DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
     "VF -> PF [%02x] message: [%08x, %08x] --> %p, %08x --> %p\n",
     GET_FIELD(p_hwfn->hw_info.concrete_fid,
        PXP_CONCRETE_FID_PFID),
     U64_HI(p_hwfn->vf_iov_info->vf2pf_request_phys),
     U64_LO(p_hwfn->vf_iov_info->vf2pf_request_phys),
     &zone_data->non_trigger.vf_pf_msg_addr,
     *((u32 *)&trigger),
     &zone_data->trigger);

 REG_WR(p_hwfn,
        (osal_uintptr_t)&zone_data->non_trigger.vf_pf_msg_addr.lo,
        U64_LO(p_hwfn->vf_iov_info->vf2pf_request_phys));

 REG_WR(p_hwfn,
        (osal_uintptr_t)&zone_data->non_trigger.vf_pf_msg_addr.hi,
        U64_HI(p_hwfn->vf_iov_info->vf2pf_request_phys));




 OSAL_WMB(p_hwfn->p_dev);

 REG_WR(p_hwfn, (osal_uintptr_t)&zone_data->trigger, *((u32 *)&trigger));




 while ((!*done) && time) {
  OSAL_MSLEEP(25);
  time--;
 }

 if (!*done) {
  DP_NOTICE(p_hwfn, 1,
     "VF <-- PF Timeout [Type %d]\n",
     p_req->first_tlv.tl.type);
  rc = ECORE_TIMEOUT;
 } else {
  if ((*done != PFVF_STATUS_SUCCESS) &&
      (*done != PFVF_STATUS_NO_RESOURCE))
   DP_NOTICE(p_hwfn, 0,
      "PF response: %d [Type %d]\n",
      *done, p_req->first_tlv.tl.type);
  else
   DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
       "PF response: %d [Type %d]\n",
       *done, p_req->first_tlv.tl.type);
 }

 return rc;
}
