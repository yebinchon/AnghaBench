
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_l2_info; } ;
struct TYPE_2__ {int lock; } ;


 int ECORE_IS_L2_PERSONALITY (struct ecore_hwfn*) ;
 int OSAL_MUTEX_INIT (int *) ;

void ecore_l2_setup(struct ecore_hwfn *p_hwfn)
{
 if (!ECORE_IS_L2_PERSONALITY(p_hwfn))
  return;

 OSAL_MUTEX_INIT(&p_hwfn->p_l2_info->lock);
}
