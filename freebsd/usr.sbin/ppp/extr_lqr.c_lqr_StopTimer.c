
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timer; } ;
struct TYPE_4__ {TYPE_1__ lqm; } ;
struct physical {TYPE_2__ hdlc; } ;


 int timer_Stop (int *) ;

void
lqr_StopTimer(struct physical *physical)
{
  timer_Stop(&physical->hdlc.lqm.timer);
}
