
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dev {scalar_t__ mcp_nvm_resp; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_dev*,int,char*,int) ;
 int DRV_MSG_CODE_PHY_CORE_READ ;
 int DRV_MSG_CODE_PHY_RAW_READ ;
 int ECORE_BUSY ;
 struct ecore_hwfn* ECORE_LEADING_HWFN (struct ecore_dev*) ;
 scalar_t__ ECORE_PHY_CORE_READ ;
 int ECORE_SUCCESS ;
 int ecore_mcp_nvm_rd_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 struct ecore_ptt* ecore_ptt_acquire (struct ecore_hwfn*) ;
 int ecore_ptt_release (struct ecore_hwfn*,struct ecore_ptt*) ;

enum _ecore_status_t ecore_mcp_phy_read(struct ecore_dev *p_dev, u32 cmd,
     u32 addr, u8 *p_buf, u32 len)
{
 struct ecore_hwfn *p_hwfn = ECORE_LEADING_HWFN(p_dev);
 struct ecore_ptt *p_ptt;
 u32 resp, param;
 enum _ecore_status_t rc;

 p_ptt = ecore_ptt_acquire(p_hwfn);
 if (!p_ptt)
  return ECORE_BUSY;

 rc = ecore_mcp_nvm_rd_cmd(p_hwfn, p_ptt,
      (cmd == ECORE_PHY_CORE_READ) ?
      DRV_MSG_CODE_PHY_CORE_READ :
      DRV_MSG_CODE_PHY_RAW_READ,
      addr, &resp, &param, &len, (u32 *)p_buf);
 if (rc != ECORE_SUCCESS)
  DP_NOTICE(p_dev, 0, "MCP command rc = %d\n", rc);

 p_dev->mcp_nvm_resp = resp;
 ecore_ptt_release(p_hwfn, p_ptt);

 return rc;
}
