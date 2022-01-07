
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_ERR (struct ecore_hwfn*,char*) ;
 int DRV_MSG_CODE_MASK_PARITIES ;
 int ECORE_INVAL ;
 int ECORE_SUCCESS ;
 scalar_t__ FW_MSG_CODE_OK ;
 int ecore_mcp_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,scalar_t__,scalar_t__*,scalar_t__*) ;

enum _ecore_status_t ecore_mcp_mask_parities(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt,
          u32 mask_parities)
{
 u32 resp = 0, param = 0;
 enum _ecore_status_t rc;

 rc = ecore_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_MASK_PARITIES,
      mask_parities, &resp, &param);

 if (rc != ECORE_SUCCESS) {
  DP_ERR(p_hwfn, "MCP response failure for mask parities, aborting\n");
 } else if (resp != FW_MSG_CODE_OK) {
  DP_ERR(p_hwfn, "MCP did not acknowledge mask parity request. Old MFW?\n");
  rc = ECORE_INVAL;
 }

 return rc;
}
