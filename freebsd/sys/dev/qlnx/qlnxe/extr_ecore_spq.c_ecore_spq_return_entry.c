
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_spq_entry {int dummy; } ;
struct ecore_hwfn {TYPE_1__* p_spq; } ;
struct TYPE_2__ {int lock; } ;


 int OSAL_SPIN_LOCK (int *) ;
 int OSAL_SPIN_UNLOCK (int *) ;
 int __ecore_spq_return_entry (struct ecore_hwfn*,struct ecore_spq_entry*) ;

void ecore_spq_return_entry(struct ecore_hwfn *p_hwfn,
       struct ecore_spq_entry *p_ent)
{
 OSAL_SPIN_LOCK(&p_hwfn->p_spq->lock);
 __ecore_spq_return_entry(p_hwfn, p_ent);
 OSAL_SPIN_UNLOCK(&p_hwfn->p_spq->lock);
}
