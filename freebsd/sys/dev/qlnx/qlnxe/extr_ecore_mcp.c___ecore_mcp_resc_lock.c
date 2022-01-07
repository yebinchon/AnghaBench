
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ecore_resc_lock_params {int timeout; int resource; int b_granted; void* owner; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,int ,int) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int,int,...) ;
 int ECORE_INVAL ;


 int ECORE_MSG_SP ;
 int ECORE_SUCCESS ;
 void* GET_MFW_FIELD (int ,int ) ;
 int RESOURCE_CMD_REQ_AGE ;
 int RESOURCE_CMD_REQ_OPCODE ;
 int RESOURCE_CMD_REQ_RESC ;
 int RESOURCE_CMD_RSP_OPCODE ;
 int RESOURCE_CMD_RSP_OWNER ;


 int RESOURCE_OPCODE_REQ ;
 int RESOURCE_OPCODE_REQ_WO_AGING ;
 int RESOURCE_OPCODE_REQ_W_AGING ;
 int SET_MFW_FIELD (int ,int ,int) ;
 int ecore_mcp_resource_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,int *,int *) ;

__attribute__((used)) static enum _ecore_status_t
__ecore_mcp_resc_lock(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
        struct ecore_resc_lock_params *p_params)
{
 u32 param = 0, mcp_resp, mcp_param;
 u8 opcode, timeout;
 enum _ecore_status_t rc;

 switch (p_params->timeout) {
 case 131:
  opcode = RESOURCE_OPCODE_REQ;
  timeout = 0;
  break;
 case 130:
  opcode = RESOURCE_OPCODE_REQ_WO_AGING;
  timeout = 0;
  break;
 default:
  opcode = RESOURCE_OPCODE_REQ_W_AGING;
  timeout = p_params->timeout;
  break;
 }

 SET_MFW_FIELD(param, RESOURCE_CMD_REQ_RESC, p_params->resource);
 SET_MFW_FIELD(param, RESOURCE_CMD_REQ_OPCODE, opcode);
 SET_MFW_FIELD(param, RESOURCE_CMD_REQ_AGE, timeout);

 DP_VERBOSE(p_hwfn, ECORE_MSG_SP,
     "Resource lock request: param 0x%08x [age %d, opcode %d, resource %d]\n",
     param, timeout, opcode, p_params->resource);


 rc = ecore_mcp_resource_cmd(p_hwfn, p_ptt, param, &mcp_resp,
        &mcp_param);
 if (rc != ECORE_SUCCESS)
  return rc;


 p_params->owner = GET_MFW_FIELD(mcp_param, RESOURCE_CMD_RSP_OWNER);
 opcode = GET_MFW_FIELD(mcp_param, RESOURCE_CMD_RSP_OPCODE);

 DP_VERBOSE(p_hwfn, ECORE_MSG_SP,
     "Resource lock response: mcp_param 0x%08x [opcode %d, owner %d]\n",
     mcp_param, opcode, p_params->owner);

 switch (opcode) {
 case 128:
  p_params->b_granted = 1;
  break;
 case 129:
  p_params->b_granted = 0;
  break;
 default:
  DP_NOTICE(p_hwfn, 0,
     "Unexpected opcode in resource lock response [mcp_param 0x%08x, opcode %d]\n",
     mcp_param, opcode);
  return ECORE_INVAL;
 }

 return ECORE_SUCCESS;
}
