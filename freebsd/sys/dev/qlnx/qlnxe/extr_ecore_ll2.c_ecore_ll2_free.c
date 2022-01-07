
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ecore_hwfn {TYPE_3__* p_ll2_info; int p_dev; } ;
struct TYPE_5__ {int lock; } ;
struct TYPE_6__ {int lock; } ;
struct TYPE_7__ {int mutex; TYPE_1__ tx_queue; TYPE_2__ rx_queue; } ;


 int ECORE_MAX_NUM_OF_LL2_CONNECTIONS ;
 int OSAL_FREE (int ,TYPE_3__*) ;
 int OSAL_MUTEX_DEALLOC (int *) ;
 TYPE_3__* OSAL_NULL ;
 int OSAL_SPIN_LOCK_DEALLOC (int *) ;

void ecore_ll2_free(struct ecore_hwfn *p_hwfn)
{



 if (!p_hwfn->p_ll2_info)
  return;
 OSAL_FREE(p_hwfn->p_dev, p_hwfn->p_ll2_info);
 p_hwfn->p_ll2_info = OSAL_NULL;
}
