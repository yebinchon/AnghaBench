
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_INFO (struct ecore_hwfn*,char*) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,scalar_t__,int ) ;
 int DRV_MSG_CODE_RESOURCE_CMD ;
 int ECORE_INVAL ;
 int ECORE_NOTIMPL ;
 int ECORE_SUCCESS ;
 scalar_t__ FW_MSG_CODE_UNSUPPORTED ;
 int GET_MFW_FIELD (scalar_t__,int ) ;
 int RESOURCE_CMD_REQ_OPCODE ;
 scalar_t__ RESOURCE_OPCODE_UNKNOWN_CMD ;
 int ecore_mcp_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,scalar_t__,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static enum _ecore_status_t ecore_mcp_resource_cmd(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt,
         u32 param, u32 *p_mcp_resp,
         u32 *p_mcp_param)
{
 enum _ecore_status_t rc;

 rc = ecore_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_RESOURCE_CMD, param,
      p_mcp_resp, p_mcp_param);
 if (rc != ECORE_SUCCESS)
  return rc;

 if (*p_mcp_resp == FW_MSG_CODE_UNSUPPORTED) {
  DP_INFO(p_hwfn,
   "The resource command is unsupported by the MFW\n");
  return ECORE_NOTIMPL;
 }

 if (*p_mcp_param == RESOURCE_OPCODE_UNKNOWN_CMD) {
  u8 opcode = GET_MFW_FIELD(param, RESOURCE_CMD_REQ_OPCODE);

  DP_NOTICE(p_hwfn, 0,
     "The resource command is unknown to the MFW [param 0x%08x, opcode %d]\n",
     param, opcode);
  return ECORE_INVAL;
 }

 return rc;
}
