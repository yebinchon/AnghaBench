
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ecore_iwarp_ep {int list_entry; TYPE_3__* listener; } ;
struct ecore_hwfn {TYPE_2__* p_rdma_info; } ;
typedef int osal_list_t ;
struct TYPE_6__ {int lock; int ep_list; } ;
struct TYPE_4__ {int iw_lock; } ;
struct TYPE_5__ {TYPE_1__ iwarp; } ;


 int OSAL_LIST_PUSH_TAIL (int *,int *) ;
 int OSAL_LIST_REMOVE_ENTRY (int *,int *) ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;

__attribute__((used)) static void
ecore_iwarp_move_to_ep_list(struct ecore_hwfn *p_hwfn,
       osal_list_t *list, struct ecore_iwarp_ep *ep)
{
 OSAL_SPIN_LOCK(&ep->listener->lock);
 OSAL_LIST_REMOVE_ENTRY(&ep->list_entry, &ep->listener->ep_list);
 OSAL_SPIN_UNLOCK(&ep->listener->lock);
 OSAL_SPIN_LOCK(&p_hwfn->p_rdma_info->iwarp.iw_lock);
 OSAL_LIST_PUSH_TAIL(&ep->list_entry, list);
 OSAL_SPIN_UNLOCK(&p_hwfn->p_rdma_info->iwarp.iw_lock);
}
