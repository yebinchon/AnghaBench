
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum ecore_ov_client { ____Placeholder_ecore_ov_client } ecore_ov_client ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_ERR (struct ecore_hwfn*,char*) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 int DRV_MB_PARAM_OV_CURR_CFG_OS ;
 int DRV_MB_PARAM_OV_CURR_CFG_OTHER ;
 int DRV_MB_PARAM_OV_CURR_CFG_VENDOR_SPEC ;
 int DRV_MSG_CODE_OV_UPDATE_CURR_CFG ;
 int ECORE_INVAL ;



 int ECORE_SUCCESS ;
 int ecore_mcp_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int *,int *) ;

enum _ecore_status_t
ecore_mcp_ov_update_current_config(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt,
       enum ecore_ov_client client)
{
 u32 resp = 0, param = 0;
 u32 drv_mb_param;
 enum _ecore_status_t rc;

 switch (client) {
 case 130:
  drv_mb_param = DRV_MB_PARAM_OV_CURR_CFG_OS;
  break;
 case 129:
  drv_mb_param = DRV_MB_PARAM_OV_CURR_CFG_OTHER;
  break;
 case 128:
  drv_mb_param = DRV_MB_PARAM_OV_CURR_CFG_VENDOR_SPEC;
  break;
 default:
  DP_NOTICE(p_hwfn, 1,
     "Invalid client type %d\n", client);
  return ECORE_INVAL;
 }

 rc = ecore_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_OV_UPDATE_CURR_CFG,
      drv_mb_param, &resp, &param);
 if (rc != ECORE_SUCCESS)
  DP_ERR(p_hwfn, "MCP response failure, aborting\n");

 return rc;
}
