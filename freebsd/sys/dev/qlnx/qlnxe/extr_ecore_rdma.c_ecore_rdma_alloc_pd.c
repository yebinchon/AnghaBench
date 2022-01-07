
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int lock; int pd_map; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,...) ;
 int ECORE_MSG_RDMA ;
 int ECORE_SUCCESS ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int ecore_rdma_bmap_alloc_id (struct ecore_hwfn*,int *,scalar_t__*) ;

enum _ecore_status_t ecore_rdma_alloc_pd(void *rdma_cxt,
      u16 *pd)
{
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
 u32 returned_id;
 enum _ecore_status_t rc;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "Alloc PD\n");


 OSAL_SPIN_LOCK(&p_hwfn->p_rdma_info->lock);
 rc = ecore_rdma_bmap_alloc_id(p_hwfn,
          &p_hwfn->p_rdma_info->pd_map,
          &returned_id);
 OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->lock);
 if (rc != ECORE_SUCCESS)
  DP_NOTICE(p_hwfn, 0, "Failed in allocating pd id\n");

 *pd = (u16)returned_id;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "Alloc PD - done, rc = %d\n", rc);
 return rc;
}
