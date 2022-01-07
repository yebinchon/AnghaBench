
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct timeval {int tv_sec; } ;
struct TYPE_7__ {int tick; } ;
typedef TYPE_1__ channel_t ;


 int EXIT_FAILURE ;
 TYPE_1__* LIST_FIRST (int *) ;
 TYPE_1__* LIST_NEXT (TYPE_1__*,TYPE_1__*) ;
 int channel_close (TYPE_1__*) ;
 int channel_list ;
 int channel_tick ;
 scalar_t__ evtimer_add (void*,struct timeval*) ;
 int exit (int ) ;
 int log_err (char*) ;

__attribute__((used)) static void
channel_watchdog(int fd, short ev, void *arg)
{
 static struct timeval tv = { .tv_sec = 1 };
 channel_t *chan, *next;
 int tick;

 tick = (channel_tick % 60) + 1;
 channel_tick = 0;

 next = LIST_FIRST(&channel_list);
 while ((chan = next) != ((void*)0)) {
  next = LIST_NEXT(chan, next);

  if (chan->tick == tick)
   channel_close(chan);
  else if (chan->tick != 0)
   channel_tick = tick;
 }

 if (channel_tick != 0 && evtimer_add(arg, &tv) < 0) {
  log_err("Could not add watchdog event: %m");
  exit(EXIT_FAILURE);
 }
}
