
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_ptt_pool; } ;
struct TYPE_2__ {int lock; } ;


 int OSAL_SPIN_LOCK_DEALLOC (int *) ;
 int __ecore_ptt_pool_free (struct ecore_hwfn*) ;

void ecore_ptt_pool_free(struct ecore_hwfn *p_hwfn)
{




 __ecore_ptt_pool_free(p_hwfn);
}
