
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DRV_MSG_CODE_NIG_DRAIN ;
 int OSAL_MSLEEP (int) ;
 int ecore_mcp_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,int,int *,int *) ;

enum _ecore_status_t ecore_mcp_drain(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt)
{
 u32 resp = 0, param = 0;
 enum _ecore_status_t rc;

 rc = ecore_mcp_cmd(p_hwfn, p_ptt,
      DRV_MSG_CODE_NIG_DRAIN, 1000,
      &resp, &param);


 OSAL_MSLEEP(1020);

 return rc;
}
