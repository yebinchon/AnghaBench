
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
struct pppThroughput {TYPE_1__ Timer; int downtime; } ;


 scalar_t__ TIMER_STOPPED ;
 int time (int *) ;
 int timer_Stop (TYPE_1__*) ;

void
throughput_stop(struct pppThroughput *t)
{
  if (t->Timer.state != TIMER_STOPPED)
    time(&t->downtime);
  timer_Stop(&t->Timer);
}
