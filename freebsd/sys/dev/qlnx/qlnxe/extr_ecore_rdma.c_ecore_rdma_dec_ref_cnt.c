
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_rdma_info; } ;
struct TYPE_2__ {int lock; int ref_cnt; } ;


 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;

__attribute__((used)) static void ecore_rdma_dec_ref_cnt(struct ecore_hwfn *p_hwfn)
{
 OSAL_SPIN_LOCK(&p_hwfn->p_rdma_info->lock);
 p_hwfn->p_rdma_info->ref_cnt--;
 OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->lock);
}
