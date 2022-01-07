
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int callout; } ;
typedef TYPE_1__ ocs_timer_t ;
typedef int int32_t ;


 int callout_active (int *) ;

int32_t
ocs_timer_pending(ocs_timer_t *timer)
{
 return callout_active(&timer->callout);
}
