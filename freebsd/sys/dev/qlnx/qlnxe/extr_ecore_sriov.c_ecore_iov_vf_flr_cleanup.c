
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_2__* p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_4__ {TYPE_1__* p_iov_info; } ;
struct TYPE_3__ {scalar_t__ total_vfs; } ;


 int ECORE_SUCCESS ;
 int OSAL_MEMSET (int *,int ,int) ;
 int OSAL_MSLEEP (int) ;
 int VF_MAX_STATIC ;
 int ecore_iov_execute_vf_flr_cleanup (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int *) ;
 int ecore_mcp_ack_vf_flr (struct ecore_hwfn*,struct ecore_ptt*,int *) ;

enum _ecore_status_t ecore_iov_vf_flr_cleanup(struct ecore_hwfn *p_hwfn,
           struct ecore_ptt *p_ptt)

{
 u32 ack_vfs[VF_MAX_STATIC / 32];
 enum _ecore_status_t rc = ECORE_SUCCESS;
 u16 i;

 OSAL_MEMSET(ack_vfs, 0, sizeof(u32) * (VF_MAX_STATIC / 32));





 OSAL_MSLEEP(100);

 for (i = 0; i < p_hwfn->p_dev->p_iov_info->total_vfs; i++)
  ecore_iov_execute_vf_flr_cleanup(p_hwfn, p_ptt, i, ack_vfs);

 rc = ecore_mcp_ack_vf_flr(p_hwfn, p_ptt, ack_vfs);
 return rc;
}
