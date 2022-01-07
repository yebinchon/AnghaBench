
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_mcp_mb_params {int flags; int param; int cmd; } ;
struct ecore_hwfn {TYPE_1__* p_dev; } ;
typedef int mb_params ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int wol_config; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 int DRV_MB_PARAM_UNLOAD_WOL_DISABLED ;
 int DRV_MB_PARAM_UNLOAD_WOL_ENABLED ;
 int DRV_MB_PARAM_UNLOAD_WOL_MCP ;
 int DRV_MSG_CODE_UNLOAD_REQ ;
 int ECORE_MB_FLAG_AVOID_BLOCK ;
 int ECORE_MB_FLAG_CAN_SLEEP ;



 int OSAL_MEM_ZERO (struct ecore_mcp_mb_params*,int) ;
 int ecore_mcp_cmd_and_union (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_mcp_mb_params*) ;

enum _ecore_status_t ecore_mcp_unload_req(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt)
{
 struct ecore_mcp_mb_params mb_params;
 u32 wol_param;

 switch (p_hwfn->p_dev->wol_config) {
 case 129:
  wol_param = DRV_MB_PARAM_UNLOAD_WOL_DISABLED;
  break;
 case 128:
  wol_param = DRV_MB_PARAM_UNLOAD_WOL_ENABLED;
  break;
 default:
  DP_NOTICE(p_hwfn, 1,
     "Unknown WoL configuration %02x\n",
     p_hwfn->p_dev->wol_config);

 case 130:
  wol_param = DRV_MB_PARAM_UNLOAD_WOL_MCP;
 }

 OSAL_MEM_ZERO(&mb_params, sizeof(mb_params));
 mb_params.cmd = DRV_MSG_CODE_UNLOAD_REQ;
 mb_params.param = wol_param;
 mb_params.flags = ECORE_MB_FLAG_CAN_SLEEP | ECORE_MB_FLAG_AVOID_BLOCK;

 return ecore_mcp_cmd_and_union(p_hwfn, p_ptt, &mb_params);
}
