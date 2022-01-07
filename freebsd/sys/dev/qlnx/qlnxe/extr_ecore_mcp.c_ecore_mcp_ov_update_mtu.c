
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_ERR (struct ecore_hwfn*,char*,int) ;
 int DRV_MB_PARAM_OV_MTU_SIZE_OFFSET ;
 int DRV_MSG_CODE_OV_UPDATE_MTU ;
 int ECORE_SUCCESS ;
 int ecore_mcp_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,int,int*,int*) ;

enum _ecore_status_t
ecore_mcp_ov_update_mtu(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
   u16 mtu)
{
 u32 resp = 0, param = 0;
 u32 drv_mb_param;
 enum _ecore_status_t rc;

 drv_mb_param = (u32)mtu << DRV_MB_PARAM_OV_MTU_SIZE_OFFSET;
 rc = ecore_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_OV_UPDATE_MTU,
      drv_mb_param, &resp, &param);
 if (rc != ECORE_SUCCESS)
  DP_ERR(p_hwfn, "Failed to send mtu value, rc = %d\n", rc);

 return rc;
}
