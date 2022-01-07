
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_rdma_info; int p_dev; } ;
struct TYPE_3__ {int lock; } ;


 int OSAL_FREE (int ,TYPE_1__*) ;
 TYPE_1__* OSAL_NULL ;
 int OSAL_SPIN_LOCK_DEALLOC (int *) ;

void ecore_rdma_info_free(struct ecore_hwfn *p_hwfn)
{



 OSAL_FREE(p_hwfn->p_dev, p_hwfn->p_rdma_info);
 p_hwfn->p_rdma_info = OSAL_NULL;
}
