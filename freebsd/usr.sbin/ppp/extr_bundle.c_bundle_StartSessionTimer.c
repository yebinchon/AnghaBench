
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int time_t ;
struct TYPE_9__ {char* name; unsigned int load; struct bundle* arg; int func; } ;
struct TYPE_8__ {unsigned int done; TYPE_4__ timer; } ;
struct TYPE_7__ {unsigned int sessiontime; } ;
struct TYPE_6__ {int open; } ;
struct bundle {TYPE_3__ session; TYPE_2__ radius; TYPE_1__ phys_type; } ;


 int PHYS_DDIAL ;
 int PHYS_DEDICATED ;
 unsigned int SECTICKS ;
 int bundle_SessionTimeout ;
 unsigned int time (int *) ;
 int timer_Start (TYPE_4__*) ;
 int timer_Stop (TYPE_4__*) ;

void
bundle_StartSessionTimer(struct bundle *bundle, unsigned secs)
{
  timer_Stop(&bundle->session.timer);
  if ((bundle->phys_type.open & (PHYS_DEDICATED|PHYS_DDIAL)) !=
      bundle->phys_type.open && bundle->radius.sessiontime) {
    time_t now = time(((void*)0));

    if (secs == 0)
      secs = bundle->radius.sessiontime;

    bundle->session.timer.func = bundle_SessionTimeout;
    bundle->session.timer.name = "session";
    bundle->session.timer.load = secs * SECTICKS;
    bundle->session.timer.arg = bundle;
    timer_Start(&bundle->session.timer);
    bundle->session.done = now + secs;
  }
}
