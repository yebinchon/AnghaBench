
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_hwfn {TYPE_1__* p_ll2_info; } ;
struct TYPE_2__ {int mutex; } ;


 int ECORE_MAX_NUM_OF_LL2_CONNECTIONS ;
 int OSAL_MUTEX_INIT (int *) ;

void ecore_ll2_setup(struct ecore_hwfn *p_hwfn)
{
 int i;

 for (i = 0; i < ECORE_MAX_NUM_OF_LL2_CONNECTIONS; i++)
  OSAL_MUTEX_INIT(&p_hwfn->p_ll2_info[i].mutex);
}
