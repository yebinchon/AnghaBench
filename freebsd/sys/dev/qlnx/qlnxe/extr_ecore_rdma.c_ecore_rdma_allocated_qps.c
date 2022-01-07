
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_4__ {int bitmap; } ;
struct TYPE_3__ {int lock; TYPE_2__ qp_map; } ;


 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int ecore_bmap_is_empty (TYPE_2__*) ;

bool ecore_rdma_allocated_qps(struct ecore_hwfn *p_hwfn)
{
 bool result;


 if (!p_hwfn->p_rdma_info)
  return 0;

 OSAL_SPIN_LOCK(&p_hwfn->p_rdma_info->lock);
 if (!p_hwfn->p_rdma_info->qp_map.bitmap)
  result = 0;
 else
  result = !ecore_bmap_is_empty(&p_hwfn->p_rdma_info->qp_map);
 OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->lock);
 return result;
}
