
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdump_retain_data_stc {int status; int pf; int epoch; int valid; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_mdump_retain_data {int status; int pf; int epoch; int valid; } ;
struct ecore_mdump_cmd_params {int data_dst_size; scalar_t__ mcp_resp; struct mdump_retain_data_stc* p_data_dst; int cmd; } ;
struct ecore_hwfn {int dummy; } ;
typedef int mfw_mdump_retain ;
typedef int mdump_cmd_params ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_INFO (struct ecore_hwfn*,char*,scalar_t__) ;
 int DRV_MSG_CODE_MDUMP_GET_RETAIN ;
 int ECORE_SUCCESS ;
 int ECORE_UNKNOWN_ERROR ;
 scalar_t__ FW_MSG_CODE_OK ;
 int OSAL_MEM_ZERO (struct ecore_mdump_cmd_params*,int) ;
 int ecore_mcp_mdump_cmd (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_mdump_cmd_params*) ;

enum _ecore_status_t
ecore_mcp_mdump_get_retain(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
      struct ecore_mdump_retain_data *p_mdump_retain)
{
 struct ecore_mdump_cmd_params mdump_cmd_params;
 struct mdump_retain_data_stc mfw_mdump_retain;
 enum _ecore_status_t rc;

 OSAL_MEM_ZERO(&mdump_cmd_params, sizeof(mdump_cmd_params));
 mdump_cmd_params.cmd = DRV_MSG_CODE_MDUMP_GET_RETAIN;
 mdump_cmd_params.p_data_dst = &mfw_mdump_retain;
 mdump_cmd_params.data_dst_size = sizeof(mfw_mdump_retain);

 rc = ecore_mcp_mdump_cmd(p_hwfn, p_ptt, &mdump_cmd_params);
 if (rc != ECORE_SUCCESS)
  return rc;

 if (mdump_cmd_params.mcp_resp != FW_MSG_CODE_OK) {
  DP_INFO(p_hwfn,
   "Failed to get the mdump retained data [mcp_resp 0x%x]\n",
   mdump_cmd_params.mcp_resp);
  return ECORE_UNKNOWN_ERROR;
 }

 p_mdump_retain->valid = mfw_mdump_retain.valid;
 p_mdump_retain->epoch = mfw_mdump_retain.epoch;
 p_mdump_retain->pf = mfw_mdump_retain.pf;
 p_mdump_retain->status = mfw_mdump_retain.status;

 return ECORE_SUCCESS;
}
