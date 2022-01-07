
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int mbx_state; } ;
struct TYPE_4__ {TYPE_1__ sw_mbx; } ;
struct ecore_vf_info {TYPE_2__ vf_mbx; void* ctx; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int ECORE_SUCCESS ;
 int ECORE_UNKNOWN_ERROR ;
 struct ecore_vf_info* OSAL_NULL ;
 int VF_PF_WAIT_FOR_START_REQUEST ;
 struct ecore_vf_info* ecore_iov_get_vf_info (struct ecore_hwfn*,int ,int) ;

enum _ecore_status_t ecore_iov_set_vf_ctx(struct ecore_hwfn *p_hwfn,
       u16 vf_id,
       void *ctx)
{
 enum _ecore_status_t rc = ECORE_SUCCESS;
 struct ecore_vf_info *vf = ecore_iov_get_vf_info(p_hwfn, vf_id, 1);

 if (vf != OSAL_NULL) {
  vf->ctx = ctx;



 } else {
  rc = ECORE_UNKNOWN_ERROR;
 }
 return rc;
}
