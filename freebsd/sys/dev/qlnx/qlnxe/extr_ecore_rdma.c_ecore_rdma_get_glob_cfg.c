
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_rdma_glob_cfg {int dummy; } ;
struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int glob_cfg; } ;


 int ECORE_SUCCESS ;
 int OSAL_MEMCPY (struct ecore_rdma_glob_cfg*,int *,int) ;

enum _ecore_status_t
ecore_rdma_get_glob_cfg(struct ecore_hwfn *p_hwfn,
   struct ecore_rdma_glob_cfg *out_params)
{
 OSAL_MEMCPY(out_params, &p_hwfn->p_rdma_info->glob_cfg,
      sizeof(struct ecore_rdma_glob_cfg));

 return ECORE_SUCCESS;
}
