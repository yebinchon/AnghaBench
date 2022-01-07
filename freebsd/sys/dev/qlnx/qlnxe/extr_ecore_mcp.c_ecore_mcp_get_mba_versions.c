
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_mba_vers {int * mba_vers; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DRV_MSG_CODE_GET_MBA_VERSION ;
 int ECORE_SUCCESS ;
 int ECORE_UNKNOWN_ERROR ;
 scalar_t__ FW_MSG_CODE_MASK ;
 scalar_t__ FW_MSG_CODE_NVM_OK ;
 scalar_t__ MCP_DRV_NVM_BUF_LEN ;
 int ecore_mcp_nvm_rd_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,scalar_t__*,scalar_t__*,scalar_t__*,int *) ;

enum _ecore_status_t ecore_mcp_get_mba_versions(
 struct ecore_hwfn *p_hwfn,
 struct ecore_ptt *p_ptt,
 struct ecore_mba_vers *p_mba_vers)
{
 u32 buf_size, resp, param;
 enum _ecore_status_t rc;

 rc = ecore_mcp_nvm_rd_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_GET_MBA_VERSION,
      0, &resp, &param, &buf_size,
      &(p_mba_vers->mba_vers[0]));

 if (rc != ECORE_SUCCESS)
  return rc;

 if ((resp & FW_MSG_CODE_MASK) != FW_MSG_CODE_NVM_OK)
  rc = ECORE_UNKNOWN_ERROR;

 if (buf_size != MCP_DRV_NVM_BUF_LEN)
  rc = ECORE_UNKNOWN_ERROR;

 return rc;
}
