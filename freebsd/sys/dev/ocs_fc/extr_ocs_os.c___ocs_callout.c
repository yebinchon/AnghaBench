
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int (* func ) (int ) ;int callout; } ;
typedef TYPE_1__ ocs_timer_t ;


 int callout_active (int *) ;
 int callout_deactivate (int *) ;
 scalar_t__ callout_pending (int *) ;
 int stub1 (int ) ;

void
__ocs_callout(void *t)
{
 ocs_timer_t *timer = t;

 if (callout_pending(&timer->callout)) {

  return;
 }

 if (!callout_active(&timer->callout)) {

  return;
 }

 callout_deactivate(&timer->callout);

 if (timer->func) {
  timer->func(timer->data);
 }
}
