
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; struct pppThroughput* arg; int * func; scalar_t__ load; } ;
struct pppThroughput {int rolling; TYPE_1__ Timer; } ;


 scalar_t__ SECTICKS ;
 int * throughput_sampler ;
 int timer_Start (TYPE_1__*) ;
 int timer_Stop (TYPE_1__*) ;

void
throughput_restart(struct pppThroughput *t, const char *name, int rolling)
{
  timer_Stop(&t->Timer);
  t->rolling = rolling ? 1 : 0;
  if (t->rolling) {
    t->Timer.load = SECTICKS;
    t->Timer.func = throughput_sampler;
    t->Timer.name = name;
    t->Timer.arg = t;
    timer_Start(&t->Timer);
  } else {
    t->Timer.load = 0;
    t->Timer.func = ((void*)0);
    t->Timer.name = ((void*)0);
    t->Timer.arg = ((void*)0);
  }
}
