
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; } ;
struct radius {TYPE_1__ alive; } ;


 int timer_Stop (int *) ;

void
radius_StopTimer(struct radius *r)
{
  timer_Stop(&r->alive.timer);
}
