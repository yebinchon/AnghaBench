
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ecore_resc_unlock_params {int resource; int b_released; scalar_t__ b_force; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_INFO (struct ecore_hwfn*,char*,int) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int ,int) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int,...) ;
 int ECORE_INVAL ;
 int ECORE_MSG_SP ;
 int ECORE_SUCCESS ;
 int GET_MFW_FIELD (int ,int ) ;
 int RESOURCE_CMD_REQ_OPCODE ;
 int RESOURCE_CMD_REQ_RESC ;
 int RESOURCE_CMD_RSP_OPCODE ;
 int RESOURCE_OPCODE_FORCE_RELEASE ;
 int RESOURCE_OPCODE_RELEASE ;



 int SET_MFW_FIELD (int ,int ,int) ;
 int ecore_mcp_resource_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,int *,int *) ;

enum _ecore_status_t
ecore_mcp_resc_unlock(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
        struct ecore_resc_unlock_params *p_params)
{
 u32 param = 0, mcp_resp, mcp_param;
 u8 opcode;
 enum _ecore_status_t rc;

 opcode = p_params->b_force ? RESOURCE_OPCODE_FORCE_RELEASE
       : RESOURCE_OPCODE_RELEASE;
 SET_MFW_FIELD(param, RESOURCE_CMD_REQ_RESC, p_params->resource);
 SET_MFW_FIELD(param, RESOURCE_CMD_REQ_OPCODE, opcode);

 DP_VERBOSE(p_hwfn, ECORE_MSG_SP,
     "Resource unlock request: param 0x%08x [opcode %d, resource %d]\n",
     param, opcode, p_params->resource);


 rc = ecore_mcp_resource_cmd(p_hwfn, p_ptt, param, &mcp_resp,
        &mcp_param);
 if (rc != ECORE_SUCCESS)
  return rc;


 opcode = GET_MFW_FIELD(mcp_param, RESOURCE_CMD_RSP_OPCODE);

 DP_VERBOSE(p_hwfn, ECORE_MSG_SP,
     "Resource unlock response: mcp_param 0x%08x [opcode %d]\n",
     mcp_param, opcode);

 switch (opcode) {
 case 129:
  DP_INFO(p_hwfn,
   "Resource unlock request for an already released resource [%d]\n",
   p_params->resource);

 case 130:
  p_params->b_released = 1;
  break;
 case 128:
  p_params->b_released = 0;
  break;
 default:
  DP_NOTICE(p_hwfn, 0,
     "Unexpected opcode in resource unlock response [mcp_param 0x%08x, opcode %d]\n",
     mcp_param, opcode);
  return ECORE_INVAL;
 }

 return ECORE_SUCCESS;
}
