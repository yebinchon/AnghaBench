
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct ecore_mdump_cmd_params {int mcp_resp; int cmd; int data_dst_size; int p_data_dst; int data_src_size; int p_data_src; } ;
struct ecore_mcp_mb_params {int mcp_resp; int data_dst_size; int p_data_dst; int data_src_size; int p_data_src; int param; int cmd; } ;
struct ecore_hwfn {int dummy; } ;
typedef int mb_params ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_INFO (struct ecore_hwfn*,char*,...) ;
 int DRV_MSG_CODE_MDUMP_CMD ;
 int ECORE_NOTIMPL ;
 int ECORE_SUCCESS ;
 int FW_MSG_CODE_MDUMP_INVALID_CMD ;
 int FW_MSG_CODE_UNSUPPORTED ;
 int OSAL_MEM_ZERO (struct ecore_mcp_mb_params*,int) ;
 int ecore_mcp_cmd_and_union (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_mcp_mb_params*) ;

__attribute__((used)) static enum _ecore_status_t
ecore_mcp_mdump_cmd(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
      struct ecore_mdump_cmd_params *p_mdump_cmd_params)
{
 struct ecore_mcp_mb_params mb_params;
 enum _ecore_status_t rc;

 OSAL_MEM_ZERO(&mb_params, sizeof(mb_params));
 mb_params.cmd = DRV_MSG_CODE_MDUMP_CMD;
 mb_params.param = p_mdump_cmd_params->cmd;
 mb_params.p_data_src = p_mdump_cmd_params->p_data_src;
 mb_params.data_src_size = p_mdump_cmd_params->data_src_size;
 mb_params.p_data_dst = p_mdump_cmd_params->p_data_dst;
 mb_params.data_dst_size = p_mdump_cmd_params->data_dst_size;
 rc = ecore_mcp_cmd_and_union(p_hwfn, p_ptt, &mb_params);
 if (rc != ECORE_SUCCESS)
  return rc;

 p_mdump_cmd_params->mcp_resp = mb_params.mcp_resp;

 if (p_mdump_cmd_params->mcp_resp == FW_MSG_CODE_MDUMP_INVALID_CMD) {
  DP_INFO(p_hwfn,
   "The mdump sub command is unsupported by the MFW [mdump_cmd 0x%x]\n",
   p_mdump_cmd_params->cmd);
  rc = ECORE_NOTIMPL;
 } else if (p_mdump_cmd_params->mcp_resp == FW_MSG_CODE_UNSUPPORTED) {
  DP_INFO(p_hwfn,
   "The mdump command is not supported by the MFW\n");
  rc = ECORE_NOTIMPL;
 }

 return rc;
}
