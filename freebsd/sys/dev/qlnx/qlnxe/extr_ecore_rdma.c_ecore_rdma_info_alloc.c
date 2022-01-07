
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_rdma_info {int lock; } ;
struct ecore_hwfn {struct ecore_rdma_info* p_rdma_info; int p_dev; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 int GFP_KERNEL ;
 scalar_t__ OSAL_SPIN_LOCK_ALLOC (struct ecore_hwfn*,int *) ;
 int OSAL_SPIN_LOCK_INIT (int *) ;
 struct ecore_rdma_info* OSAL_ZALLOC (int ,int ,int) ;
 int ecore_rdma_info_free (struct ecore_hwfn*) ;

enum _ecore_status_t ecore_rdma_info_alloc(struct ecore_hwfn *p_hwfn)
{
 struct ecore_rdma_info *p_rdma_info;

 p_rdma_info = OSAL_ZALLOC(p_hwfn->p_dev, GFP_KERNEL, sizeof(*p_rdma_info));
 if (!p_rdma_info) {
  DP_NOTICE(p_hwfn, 0,
     "ecore rdma alloc failed: cannot allocate memory (rdma info).\n");
  return ECORE_NOMEM;
 }
 p_hwfn->p_rdma_info = p_rdma_info;







 OSAL_SPIN_LOCK_INIT(&p_rdma_info->lock);

 return ECORE_SUCCESS;
}
