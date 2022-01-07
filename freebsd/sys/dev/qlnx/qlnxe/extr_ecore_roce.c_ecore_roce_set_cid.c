
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int lock; int cid_map; } ;


 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int ecore_bmap_set_id (struct ecore_hwfn*,int *,int ) ;

__attribute__((used)) static void ecore_roce_set_cid(struct ecore_hwfn *p_hwfn,
        u32 cid)
{
 OSAL_SPIN_LOCK(&p_hwfn->p_rdma_info->lock);
 ecore_bmap_set_id(p_hwfn,
     &p_hwfn->p_rdma_info->cid_map,
     cid);
 OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->lock);
}
