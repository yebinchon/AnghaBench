
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_vf_info {int spoof_chk; int req_spoofchk_val; int relative_vf_id; int vport_id; int opaque_fid; } ;
struct ecore_sp_vport_update_params {int update_anti_spoofing_en_flg; int anti_spoofing_en; int vport_id; int opaque_fid; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int,...) ;
 int ECORE_MSG_IOV ;
 int ECORE_SPQ_MODE_EBLOCK ;
 int ECORE_SUCCESS ;
 int OSAL_MEMSET (struct ecore_sp_vport_update_params*,int ,int) ;
 int OSAL_NULL ;
 int ecore_sp_vport_update (struct ecore_hwfn*,struct ecore_sp_vport_update_params*,int ,int ) ;

__attribute__((used)) static enum _ecore_status_t __ecore_iov_spoofchk_set(struct ecore_hwfn *p_hwfn,
           struct ecore_vf_info *p_vf, bool val)
{
 struct ecore_sp_vport_update_params params;
 enum _ecore_status_t rc;

 if (val == p_vf->spoof_chk) {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "Spoofchk value[%d] is already configured\n",
      val);
  return ECORE_SUCCESS;
 }

 OSAL_MEMSET(&params, 0, sizeof(struct ecore_sp_vport_update_params));
 params.opaque_fid = p_vf->opaque_fid;
 params.vport_id = p_vf->vport_id;
 params.update_anti_spoofing_en_flg = 1;
 params.anti_spoofing_en = val;

 rc = ecore_sp_vport_update(p_hwfn, &params, ECORE_SPQ_MODE_EBLOCK,
       OSAL_NULL);
 if (rc == ECORE_SUCCESS) {
  p_vf->spoof_chk = val;
  p_vf->req_spoofchk_val = p_vf->spoof_chk;
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "Spoofchk val[%d] configured\n", val);
 } else {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "Spoofchk configuration[val:%d] failed for VF[%d]\n",
      val, p_vf->relative_vf_id);
 }

 return rc;
}
