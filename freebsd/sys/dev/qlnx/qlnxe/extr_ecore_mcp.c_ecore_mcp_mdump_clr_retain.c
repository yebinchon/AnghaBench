
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct ecore_mdump_cmd_params {int cmd; } ;
struct ecore_hwfn {int dummy; } ;
typedef int mdump_cmd_params ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DRV_MSG_CODE_MDUMP_CLR_RETAIN ;
 int OSAL_MEM_ZERO (struct ecore_mdump_cmd_params*,int) ;
 int ecore_mcp_mdump_cmd (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_mdump_cmd_params*) ;

enum _ecore_status_t ecore_mcp_mdump_clr_retain(struct ecore_hwfn *p_hwfn,
      struct ecore_ptt *p_ptt)
{
 struct ecore_mdump_cmd_params mdump_cmd_params;

 OSAL_MEM_ZERO(&mdump_cmd_params, sizeof(mdump_cmd_params));
 mdump_cmd_params.cmd = DRV_MSG_CODE_MDUMP_CLR_RETAIN;

 return ecore_mcp_mdump_cmd(p_hwfn, p_ptt, &mdump_cmd_params);
}
