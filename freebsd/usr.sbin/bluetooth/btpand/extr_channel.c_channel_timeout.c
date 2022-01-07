
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct event {int dummy; } ;
struct TYPE_3__ {int tick; } ;
typedef TYPE_1__ channel_t ;


 int channel_tick ;
 int channel_watchdog (int ,int ,struct event*) ;
 int evtimer_set (struct event*,int (*) (int ,int ,struct event*),struct event*) ;

void
channel_timeout(channel_t *chan, int to)
{
 static struct event ev;

 if (to == 0)
  chan->tick = 0;
 else
  chan->tick = (channel_tick + to) % 60;

 if (channel_tick == 0) {
  evtimer_set(&ev, channel_watchdog, &ev);
  channel_watchdog(0, 0, &ev);
 }
}
