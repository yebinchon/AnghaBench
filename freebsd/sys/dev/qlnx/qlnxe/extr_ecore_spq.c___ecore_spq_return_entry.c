
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_spq_entry {int list; } ;
struct ecore_hwfn {TYPE_1__* p_spq; } ;
struct TYPE_2__ {int free_pool; } ;


 int OSAL_LIST_PUSH_TAIL (int *,int *) ;

__attribute__((used)) static void __ecore_spq_return_entry(struct ecore_hwfn *p_hwfn,
         struct ecore_spq_entry *p_ent)
{
 OSAL_LIST_PUSH_TAIL(&p_ent->list, &p_hwfn->p_spq->free_pool);
}
