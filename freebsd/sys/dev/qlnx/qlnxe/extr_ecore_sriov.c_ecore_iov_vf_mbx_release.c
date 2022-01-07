
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pfvf_def_resp_tlv {int dummy; } ;
struct ecore_vf_info {scalar_t__ state; int opaque_fid; int concrete_fid; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int CHANNEL_TLV_RELEASE ;
 int DP_ERR (struct ecore_hwfn*,char*,int) ;
 int ECORE_SUCCESS ;
 int PFVF_STATUS_FAILURE ;
 int PFVF_STATUS_SUCCESS ;
 scalar_t__ VF_FREE ;
 scalar_t__ VF_STOPPED ;
 int ecore_iov_prepare_resp (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int ,int,int ) ;
 int ecore_iov_vf_cleanup (struct ecore_hwfn*,struct ecore_vf_info*) ;
 int ecore_sp_vf_stop (struct ecore_hwfn*,int ,int ) ;

__attribute__((used)) static void ecore_iov_vf_mbx_release(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         struct ecore_vf_info *p_vf)
{
 u16 length = sizeof(struct pfvf_def_resp_tlv);
 u8 status = PFVF_STATUS_SUCCESS;
 enum _ecore_status_t rc = ECORE_SUCCESS;

 ecore_iov_vf_cleanup(p_hwfn, p_vf);

 if (p_vf->state != VF_STOPPED && p_vf->state != VF_FREE) {

  rc = ecore_sp_vf_stop(p_hwfn, p_vf->concrete_fid,
          p_vf->opaque_fid);

  if (rc != ECORE_SUCCESS) {
   DP_ERR(p_hwfn, "ecore_sp_vf_stop returned error %d\n",
          rc);
   status = PFVF_STATUS_FAILURE;
  }

  p_vf->state = VF_STOPPED;
 }

 ecore_iov_prepare_resp(p_hwfn, p_ptt, p_vf, CHANNEL_TLV_RELEASE,
          length, status);
}
