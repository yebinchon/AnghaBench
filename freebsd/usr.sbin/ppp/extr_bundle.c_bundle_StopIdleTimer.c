
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ done; int timer; } ;
struct bundle {TYPE_1__ idle; } ;


 int timer_Stop (int *) ;

void
bundle_StopIdleTimer(struct bundle *bundle)
{
  timer_Stop(&bundle->idle.timer);
  bundle->idle.done = 0;
}
