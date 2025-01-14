
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct ecore_iov_vf_mbx {int dummy; } ;
struct ecore_vf_info {int relative_vf_id; int vport_id; int opaque_fid; int abs_vf_id; int vport_instance; struct ecore_iov_vf_mbx vf_mbx; } ;
struct ecore_sp_vport_update_params {struct ecore_rss_params* rss_params; int vport_id; int opaque_fid; } ;
struct ecore_sge_tpa_params {int dummy; } ;
struct ecore_rss_params {int dummy; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int p_dev; } ;
typedef int params ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,...) ;
 int ECORE_MSG_IOV ;
 int ECORE_SPQ_MODE_EBLOCK ;
 scalar_t__ ECORE_SUCCESS ;
 scalar_t__ OSAL_IOV_VF_VPORT_UPDATE (struct ecore_hwfn*,int ,struct ecore_sp_vport_update_params*,scalar_t__*) ;
 int OSAL_MEMSET (struct ecore_sp_vport_update_params*,int ,int) ;
 struct ecore_rss_params* OSAL_NULL ;
 int OSAL_VFREE (int ,struct ecore_rss_params*) ;
 struct ecore_rss_params* OSAL_VZALLOC (int ,int) ;
 int PFVF_STATUS_FAILURE ;
 int PFVF_STATUS_NOT_SUPPORTED ;
 int PFVF_STATUS_SUCCESS ;
 scalar_t__ ecore_iov_prep_vp_update_resp_tlvs (struct ecore_hwfn*,struct ecore_vf_info*,struct ecore_iov_vf_mbx*,int ,scalar_t__,scalar_t__) ;
 int ecore_iov_send_response (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,scalar_t__,int ) ;
 int ecore_iov_vp_update_accept_any_vlan (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,struct ecore_iov_vf_mbx*,scalar_t__*) ;
 int ecore_iov_vp_update_accept_flag (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,struct ecore_iov_vf_mbx*,scalar_t__*) ;
 int ecore_iov_vp_update_act_param (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,struct ecore_iov_vf_mbx*,scalar_t__*) ;
 int ecore_iov_vp_update_mcast_bin_param (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,struct ecore_iov_vf_mbx*,scalar_t__*) ;
 int ecore_iov_vp_update_rss_param (struct ecore_hwfn*,struct ecore_vf_info*,struct ecore_sp_vport_update_params*,struct ecore_rss_params*,struct ecore_iov_vf_mbx*,scalar_t__*,scalar_t__*) ;
 int ecore_iov_vp_update_sge_tpa_param (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,struct ecore_sge_tpa_params*,struct ecore_iov_vf_mbx*,scalar_t__*) ;
 int ecore_iov_vp_update_tx_switch (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,struct ecore_iov_vf_mbx*,scalar_t__*) ;
 int ecore_iov_vp_update_vlan_param (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,struct ecore_vf_info*,struct ecore_iov_vf_mbx*,scalar_t__*) ;
 int ecore_sp_vport_update (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,int ,struct ecore_rss_params*) ;

__attribute__((used)) static void ecore_iov_vf_mbx_vport_update(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt,
       struct ecore_vf_info *vf)
{
 struct ecore_rss_params *p_rss_params = OSAL_NULL;
 struct ecore_sp_vport_update_params params;
 struct ecore_iov_vf_mbx *mbx = &vf->vf_mbx;
 struct ecore_sge_tpa_params sge_tpa_params;
 u16 tlvs_mask = 0, tlvs_accepted = 0;
 u8 status = PFVF_STATUS_SUCCESS;
 u16 length;
 enum _ecore_status_t rc;


 if (!vf->vport_instance) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "No VPORT instance available for VF[%d], failing vport update\n",
      vf->abs_vf_id);
  status = PFVF_STATUS_FAILURE;
  goto out;
 }

 p_rss_params = OSAL_VZALLOC(p_hwfn->p_dev, sizeof(*p_rss_params));
 if (p_rss_params == OSAL_NULL) {
  status = PFVF_STATUS_FAILURE;
  goto out;
 }

 OSAL_MEMSET(&params, 0, sizeof(params));
 params.opaque_fid = vf->opaque_fid;
 params.vport_id = vf->vport_id;
 params.rss_params = OSAL_NULL;




 ecore_iov_vp_update_act_param(p_hwfn, &params, mbx, &tlvs_mask);
 ecore_iov_vp_update_vlan_param(p_hwfn, &params, vf, mbx, &tlvs_mask);
 ecore_iov_vp_update_tx_switch(p_hwfn, &params, mbx, &tlvs_mask);
 ecore_iov_vp_update_mcast_bin_param(p_hwfn, &params, mbx, &tlvs_mask);
 ecore_iov_vp_update_accept_flag(p_hwfn, &params, mbx, &tlvs_mask);
 ecore_iov_vp_update_accept_any_vlan(p_hwfn, &params, mbx, &tlvs_mask);
 ecore_iov_vp_update_sge_tpa_param(p_hwfn, &params,
       &sge_tpa_params, mbx, &tlvs_mask);

 tlvs_accepted = tlvs_mask;





 ecore_iov_vp_update_rss_param(p_hwfn, vf, &params, p_rss_params,
          mbx, &tlvs_mask, &tlvs_accepted);






 if (OSAL_IOV_VF_VPORT_UPDATE(p_hwfn, vf->relative_vf_id,
         &params, &tlvs_accepted) !=
     ECORE_SUCCESS) {
  tlvs_accepted = 0;
  status = PFVF_STATUS_NOT_SUPPORTED;
  goto out;
 }

 if (!tlvs_accepted) {
  if (tlvs_mask)
   DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
       "Upper-layer prevents said VF configuration\n");
  else
   DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
       "No feature tlvs found for vport update\n");
  status = PFVF_STATUS_NOT_SUPPORTED;
  goto out;
 }

 rc = ecore_sp_vport_update(p_hwfn, &params, ECORE_SPQ_MODE_EBLOCK,
       OSAL_NULL);

 if (rc)
  status = PFVF_STATUS_FAILURE;

out:
 OSAL_VFREE(p_hwfn->p_dev, p_rss_params);
 length = ecore_iov_prep_vp_update_resp_tlvs(p_hwfn, vf, mbx, status,
          tlvs_mask, tlvs_accepted);
 ecore_iov_send_response(p_hwfn, p_ptt, vf, length, status);
}
