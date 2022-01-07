
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,scalar_t__) ;
 int DRV_MSG_CODE_CFG_PF_VFS_MSIX ;
 int ECORE_INVAL ;
 int ECORE_MSG_IOV ;
 scalar_t__ FW_MSG_CODE_DRV_CFG_PF_VFS_MSIX_DONE ;
 int ecore_mcp_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,scalar_t__,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_mcp_config_vf_msix_ah(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt,
       u8 num)
{
 u32 resp = 0, param = num, rc_param = 0;
 enum _ecore_status_t rc;

 rc = ecore_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_CFG_PF_VFS_MSIX,
      param, &resp, &rc_param);

 if (resp != FW_MSG_CODE_DRV_CFG_PF_VFS_MSIX_DONE) {
  DP_NOTICE(p_hwfn, 1, "MFW failed to set MSI-X for VFs\n");
  rc = ECORE_INVAL;
 } else {
  DP_VERBOSE(p_hwfn, ECORE_MSG_IOV,
      "Requested 0x%02x MSI-x interrupts for VFs\n",
      num);
 }

 return rc;
}
