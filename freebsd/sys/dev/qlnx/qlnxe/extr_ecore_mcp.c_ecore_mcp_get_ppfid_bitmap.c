
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct ecore_mcp_mb_params {scalar_t__ mcp_resp; int mcp_param; int cmd; } ;
struct ecore_hwfn {struct ecore_dev* p_dev; } ;
struct ecore_dev {int ppfid_bitmap; } ;
typedef int mb_params ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_INFO (struct ecore_hwfn*,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ) ;
 int DRV_MSG_CODE_GET_PPFID_BITMAP ;
 int ECORE_MSG_SP ;
 int ECORE_NOTIMPL ;
 int ECORE_SUCCESS ;
 int FW_MB_PARAM_PPFID_BITMAP ;
 scalar_t__ FW_MSG_CODE_UNSUPPORTED ;
 int GET_MFW_FIELD (int ,int ) ;
 int OSAL_MEM_ZERO (struct ecore_mcp_mb_params*,int) ;
 int ecore_mcp_cmd_and_union (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_mcp_mb_params*) ;

enum _ecore_status_t ecore_mcp_get_ppfid_bitmap(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt)
{
 struct ecore_dev *p_dev = p_hwfn->p_dev;
 struct ecore_mcp_mb_params mb_params;
 enum _ecore_status_t rc;

 OSAL_MEM_ZERO(&mb_params, sizeof(mb_params));
 mb_params.cmd = DRV_MSG_CODE_GET_PPFID_BITMAP;
 rc = ecore_mcp_cmd_and_union(p_hwfn, p_ptt, &mb_params);
 if (rc != ECORE_SUCCESS)
  return rc;

 if (mb_params.mcp_resp == FW_MSG_CODE_UNSUPPORTED) {
  DP_INFO(p_hwfn,
   "The get_ppfid_bitmap command is unsupported by the MFW\n");
  return ECORE_NOTIMPL;
 }

 p_dev->ppfid_bitmap = GET_MFW_FIELD(mb_params.mcp_param,
         FW_MB_PARAM_PPFID_BITMAP);

 DP_VERBOSE(p_hwfn, ECORE_MSG_SP, "PPFID bitmap 0x%hhx\n",
     p_dev->ppfid_bitmap);

 return ECORE_SUCCESS;
}
