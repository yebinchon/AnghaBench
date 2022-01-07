
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pfvf_def_resp_tlv {int dummy; } ;
struct ecore_vf_info {int spoof_chk; int b_malicious; int shadow_config; scalar_t__ configured_features; int vport_id; int opaque_fid; int abs_vf_id; int vport_instance; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int CHANNEL_TLV_VPORT_TEARDOWN ;
 int DP_ERR (struct ecore_hwfn*,char*,int) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int ) ;
 int ECORE_SUCCESS ;
 int OSAL_IOV_VF_VPORT_STOP (struct ecore_hwfn*,struct ecore_vf_info*) ;
 int OSAL_MEMSET (int *,int ,int) ;
 int PFVF_STATUS_FAILURE ;
 int PFVF_STATUS_MALICIOUS ;
 int PFVF_STATUS_SUCCESS ;
 int ecore_iov_prepare_resp (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int ,int,int ) ;
 scalar_t__ ecore_iov_validate_active_rxq (struct ecore_vf_info*) ;
 scalar_t__ ecore_iov_validate_active_txq (struct ecore_vf_info*) ;
 int ecore_sp_vport_stop (struct ecore_hwfn*,int ,int ) ;

__attribute__((used)) static void ecore_iov_vf_mbx_stop_vport(struct ecore_hwfn *p_hwfn,
     struct ecore_ptt *p_ptt,
     struct ecore_vf_info *vf)
{
 u8 status = PFVF_STATUS_SUCCESS;
 enum _ecore_status_t rc;

 OSAL_IOV_VF_VPORT_STOP(p_hwfn, vf);
 vf->vport_instance--;
 vf->spoof_chk = 0;

 if ((ecore_iov_validate_active_rxq(vf)) ||
     (ecore_iov_validate_active_txq(vf))) {
  vf->b_malicious = 1;
  DP_NOTICE(p_hwfn,
     0, " VF [%02x] - considered malicious; Unable to stop RX/TX queuess\n",
     vf->abs_vf_id);
  status = PFVF_STATUS_MALICIOUS;
  goto out;
 }

 rc = ecore_sp_vport_stop(p_hwfn, vf->opaque_fid, vf->vport_id);
 if (rc != ECORE_SUCCESS) {
  DP_ERR(p_hwfn, "ecore_iov_vf_mbx_stop_vport returned error %d\n",
         rc);
  status = PFVF_STATUS_FAILURE;
 }


 vf->configured_features = 0;
 OSAL_MEMSET(&vf->shadow_config, 0, sizeof(vf->shadow_config));

out:
 ecore_iov_prepare_resp(p_hwfn, p_ptt, vf, CHANNEL_TLV_VPORT_TEARDOWN,
          sizeof(struct pfvf_def_resp_tlv), status);
}
