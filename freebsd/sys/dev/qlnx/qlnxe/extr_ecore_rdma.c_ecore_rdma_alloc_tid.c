
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_2__ {int lock; int tid_map; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,...) ;
 int ECORE_ELEM_TASK ;
 int ECORE_MSG_RDMA ;
 int ECORE_SUCCESS ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int ecore_cxt_dynamic_ilt_alloc (struct ecore_hwfn*,int ,int ) ;
 int ecore_rdma_bmap_alloc_id (struct ecore_hwfn*,int *,int *) ;

enum _ecore_status_t ecore_rdma_alloc_tid(void *rdma_cxt,
       u32 *itid)
{
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
 enum _ecore_status_t rc;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "Allocate TID\n");

 OSAL_SPIN_LOCK(&p_hwfn->p_rdma_info->lock);
 rc = ecore_rdma_bmap_alloc_id(p_hwfn,
          &p_hwfn->p_rdma_info->tid_map,
          itid);
 OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->lock);
 if (rc != ECORE_SUCCESS) {
  DP_NOTICE(p_hwfn, 0, "Failed in allocating tid\n");
  goto out;
 }

 rc = ecore_cxt_dynamic_ilt_alloc(p_hwfn, ECORE_ELEM_TASK, *itid);
out:
 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "Allocate TID - done, rc = %d\n", rc);
 return rc;
}
