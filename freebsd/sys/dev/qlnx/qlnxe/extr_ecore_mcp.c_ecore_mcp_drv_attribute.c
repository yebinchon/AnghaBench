
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct ecore_mcp_mb_params {int data_src_size; scalar_t__ mcp_resp; int mcp_param; struct ecore_mcp_mb_params* p_data_src; int offset; int mask; int val; int param; int cmd; } ;
struct ecore_mcp_drv_attr {int const attr_cmd; int attr_num; int val; int offset; int mask; } ;
struct ecore_hwfn {int dummy; } ;
struct attribute_cmd_write_stc {int data_src_size; scalar_t__ mcp_resp; int mcp_param; struct attribute_cmd_write_stc* p_data_src; int offset; int mask; int val; int param; int cmd; } ;
typedef int mb_params ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef enum _attribute_commands_e { ____Placeholder__attribute_commands_e } _attribute_commands_e ;
typedef int attr_cmd_write ;


 int ATTRIBUTE_CMD_CLEAR ;
 int ATTRIBUTE_CMD_READ ;
 int ATTRIBUTE_CMD_READ_CLEAR ;
 int ATTRIBUTE_CMD_WRITE ;
 int DP_INFO (struct ecore_hwfn*,char*,...) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int const) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int const,int,int,int ,int ,int ,int ) ;
 int DRV_MB_PARAM_ATTRIBUTE_CMD ;
 int DRV_MB_PARAM_ATTRIBUTE_KEY ;
 int DRV_MSG_CODE_ATTRIBUTE ;
 int ECORE_INVAL ;




 int ECORE_MSG_SP ;
 int ECORE_NOTIMPL ;
 int ECORE_SUCCESS ;
 scalar_t__ FW_MSG_CODE_OK ;
 scalar_t__ FW_MSG_CODE_UNSUPPORTED ;
 int OSAL_MEM_ZERO (struct ecore_mcp_mb_params*,int) ;
 int SET_MFW_FIELD (int ,int ,int) ;
 int ecore_mcp_cmd_and_union (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_mcp_mb_params*) ;

enum _ecore_status_t
ecore_mcp_drv_attribute(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
   struct ecore_mcp_drv_attr *p_drv_attr)
{
 struct attribute_cmd_write_stc attr_cmd_write;
 enum _attribute_commands_e mfw_attr_cmd;
 struct ecore_mcp_mb_params mb_params;
 enum _ecore_status_t rc;

 switch (p_drv_attr->attr_cmd) {
 case 130:
  mfw_attr_cmd = ATTRIBUTE_CMD_READ;
  break;
 case 128:
  mfw_attr_cmd = ATTRIBUTE_CMD_WRITE;
  break;
 case 129:
  mfw_attr_cmd = ATTRIBUTE_CMD_READ_CLEAR;
  break;
 case 131:
  mfw_attr_cmd = ATTRIBUTE_CMD_CLEAR;
  break;
 default:
  DP_NOTICE(p_hwfn, 0, "Unknown attribute command %d\n",
     p_drv_attr->attr_cmd);
  return ECORE_INVAL;
 }

 OSAL_MEM_ZERO(&mb_params, sizeof(mb_params));
 mb_params.cmd = DRV_MSG_CODE_ATTRIBUTE;
 SET_MFW_FIELD(mb_params.param, DRV_MB_PARAM_ATTRIBUTE_KEY,
        p_drv_attr->attr_num);
 SET_MFW_FIELD(mb_params.param, DRV_MB_PARAM_ATTRIBUTE_CMD,
        mfw_attr_cmd);
 if (p_drv_attr->attr_cmd == 128) {
  OSAL_MEM_ZERO(&attr_cmd_write, sizeof(attr_cmd_write));
  attr_cmd_write.val = p_drv_attr->val;
  attr_cmd_write.mask = p_drv_attr->mask;
  attr_cmd_write.offset = p_drv_attr->offset;

  mb_params.p_data_src = &attr_cmd_write;
  mb_params.data_src_size = sizeof(attr_cmd_write);
 }

 rc = ecore_mcp_cmd_and_union(p_hwfn, p_ptt, &mb_params);
 if (rc != ECORE_SUCCESS)
  return rc;

 if (mb_params.mcp_resp == FW_MSG_CODE_UNSUPPORTED) {
  DP_INFO(p_hwfn,
   "The attribute command is not supported by the MFW\n");
  return ECORE_NOTIMPL;
 } else if (mb_params.mcp_resp != FW_MSG_CODE_OK) {
  DP_INFO(p_hwfn,
   "Failed to send an attribute command [mcp_resp 0x%x, attr_cmd %d, attr_num %d]\n",
   mb_params.mcp_resp, p_drv_attr->attr_cmd,
   p_drv_attr->attr_num);
  return ECORE_INVAL;
 }

 DP_VERBOSE(p_hwfn, ECORE_MSG_SP,
     "Attribute Command: cmd %d [mfw_cmd %d], num %d, in={val 0x%08x, mask 0x%08x, offset 0x%08x}, out={val 0x%08x}\n",
     p_drv_attr->attr_cmd, mfw_attr_cmd, p_drv_attr->attr_num,
     p_drv_attr->val, p_drv_attr->mask, p_drv_attr->offset,
     mb_params.mcp_param);

 if (p_drv_attr->attr_cmd == 130 ||
     p_drv_attr->attr_cmd == 129)
  p_drv_attr->val = mb_params.mcp_param;

 return ECORE_SUCCESS;
}
