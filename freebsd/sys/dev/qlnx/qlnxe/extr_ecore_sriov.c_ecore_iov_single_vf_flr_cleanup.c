
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_SUCCESS ;
 int OSAL_MEMSET (int *,int ,int) ;
 int OSAL_MSLEEP (int) ;
 int VF_MAX_STATIC ;
 int ecore_iov_execute_vf_flr_cleanup (struct ecore_hwfn*,struct ecore_ptt*,int ,int *) ;
 int ecore_mcp_ack_vf_flr (struct ecore_hwfn*,struct ecore_ptt*,int *) ;

enum _ecore_status_t
ecore_iov_single_vf_flr_cleanup(struct ecore_hwfn *p_hwfn,
    struct ecore_ptt *p_ptt,
    u16 rel_vf_id)

{
 u32 ack_vfs[VF_MAX_STATIC / 32];
 enum _ecore_status_t rc = ECORE_SUCCESS;

 OSAL_MEMSET(ack_vfs, 0, sizeof(u32) * (VF_MAX_STATIC / 32));


 OSAL_MSLEEP(100);

 ecore_iov_execute_vf_flr_cleanup(p_hwfn, p_ptt, rel_vf_id, ack_vfs);

 rc = ecore_mcp_ack_vf_flr(p_hwfn, p_ptt, ack_vfs);
 return rc;
}
