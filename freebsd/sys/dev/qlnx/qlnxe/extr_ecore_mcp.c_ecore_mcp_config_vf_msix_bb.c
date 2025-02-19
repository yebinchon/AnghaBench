
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_1__* p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {scalar_t__ num_hwfns; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,scalar_t__) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ DRV_MB_PARAM_CFG_VF_MSIX_SB_NUM_MASK ;
 scalar_t__ DRV_MB_PARAM_CFG_VF_MSIX_SB_NUM_OFFSET ;
 scalar_t__ DRV_MB_PARAM_CFG_VF_MSIX_VF_ID_MASK ;
 scalar_t__ DRV_MB_PARAM_CFG_VF_MSIX_VF_ID_OFFSET ;
 int DRV_MSG_CODE_CFG_VF_MSIX ;
 int ECORE_INVAL ;
 int ECORE_MSG_IOV ;
 int ECORE_SUCCESS ;
 scalar_t__ FW_MSG_CODE_DRV_CFG_VF_MSIX_DONE ;
 int IS_LEAD_HWFN (struct ecore_hwfn*) ;
 int ecore_mcp_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,scalar_t__,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_mcp_config_vf_msix_bb(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt,
       u8 vf_id, u8 num)
{
 u32 resp = 0, param = 0, rc_param = 0;
 enum _ecore_status_t rc;


 if (!IS_LEAD_HWFN(p_hwfn))
  return ECORE_SUCCESS;
 num *= p_hwfn->p_dev->num_hwfns;

 param |= (vf_id << DRV_MB_PARAM_CFG_VF_MSIX_VF_ID_OFFSET) &
   DRV_MB_PARAM_CFG_VF_MSIX_VF_ID_MASK;
 param |= (num << DRV_MB_PARAM_CFG_VF_MSIX_SB_NUM_OFFSET) &
   DRV_MB_PARAM_CFG_VF_MSIX_SB_NUM_MASK;

 rc = ecore_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_CFG_VF_MSIX, param,
      &resp, &rc_param);

 if (resp != FW_MSG_CODE_DRV_CFG_VF_MSIX_DONE) {
  DP_NOTICE(p_hwfn, 1, "VF[%d]: MFW failed to set MSI-X\n",
     vf_id);
  rc = ECORE_INVAL;
 } else {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "Requested 0x%02x MSI-x interrupts from VF 0x%02x\n",
       num, vf_id);
 }

 return rc;
}
