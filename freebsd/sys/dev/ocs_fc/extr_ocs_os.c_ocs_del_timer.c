
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int callout; } ;
typedef TYPE_1__ ocs_timer_t ;
typedef int int32_t ;


 int callout_stop (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int32_t
ocs_del_timer(ocs_timer_t *timer)
{

 mtx_lock(&timer->lock);
  callout_stop(&timer->callout);
 mtx_unlock(&timer->lock);

 return 0;
}
