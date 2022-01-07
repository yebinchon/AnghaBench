
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_ptt {int list_entry; } ;
struct ecore_hwfn {TYPE_1__* p_ptt_pool; } ;
struct TYPE_2__ {int lock; int free_list; } ;


 int OSAL_LIST_PUSH_HEAD (int *,int *) ;
 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;

void ecore_ptt_release(struct ecore_hwfn *p_hwfn,
         struct ecore_ptt *p_ptt) {



 OSAL_SPIN_LOCK(&p_hwfn->p_ptt_pool->lock);
 OSAL_LIST_PUSH_HEAD(&p_ptt->list_entry, &p_hwfn->p_ptt_pool->free_list);
 OSAL_SPIN_UNLOCK(&p_hwfn->p_ptt_pool->lock);
}
