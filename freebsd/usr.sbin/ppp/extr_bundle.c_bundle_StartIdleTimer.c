
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned int time_t ;
struct TYPE_11__ {char* name; unsigned int load; struct bundle* arg; int func; } ;
struct TYPE_10__ {unsigned int done; TYPE_5__ timer; } ;
struct TYPE_8__ {unsigned int timeout; unsigned int min_timeout; } ;
struct TYPE_9__ {TYPE_2__ idle; } ;
struct TYPE_7__ {int open; } ;
struct bundle {unsigned int upat; TYPE_4__ idle; TYPE_3__ cfg; TYPE_1__ phys_type; } ;


 int PHYS_DDIAL ;
 int PHYS_DEDICATED ;
 unsigned int SECTICKS ;
 int bundle_IdleTimeout ;
 unsigned int time (int *) ;
 int timer_Start (TYPE_5__*) ;
 int timer_Stop (TYPE_5__*) ;

void
bundle_StartIdleTimer(struct bundle *bundle, unsigned secs)
{
  timer_Stop(&bundle->idle.timer);
  if ((bundle->phys_type.open & (PHYS_DEDICATED|PHYS_DDIAL)) !=
      bundle->phys_type.open && bundle->cfg.idle.timeout) {
    time_t now = time(((void*)0));

    if (secs == 0)
      secs = bundle->cfg.idle.timeout;


    if (bundle->cfg.idle.min_timeout > secs && bundle->upat) {
      unsigned up = now - bundle->upat;

      if (bundle->cfg.idle.min_timeout > up &&
          bundle->cfg.idle.min_timeout - up > (long long)secs)

        secs = bundle->cfg.idle.min_timeout - up;
    }
    bundle->idle.timer.func = bundle_IdleTimeout;
    bundle->idle.timer.name = "idle";
    bundle->idle.timer.load = secs * SECTICKS;
    bundle->idle.timer.arg = bundle;
    timer_Start(&bundle->idle.timer);
    bundle->idle.done = now + secs;
  }
}
