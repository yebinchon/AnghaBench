
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int load; } ;
struct TYPE_9__ {int interval; TYPE_4__ timer; } ;
struct TYPE_11__ {TYPE_3__ alive; } ;
struct TYPE_7__ {int throughput; } ;
struct TYPE_8__ {TYPE_1__ ipcp; } ;
struct bundle {TYPE_6__ radius; TYPE_2__ ncp; int links; int radacct; } ;


 int RAD_ALIVE ;
 int SECTICKS ;
 int radius_Account (TYPE_6__*,int *,int ,int ,int *) ;
 int timer_Start (TYPE_4__*) ;
 int timer_Stop (TYPE_4__*) ;

__attribute__((used)) static void
radius_alive(void *v)
{
  struct bundle *bundle = (struct bundle *)v;

  timer_Stop(&bundle->radius.alive.timer);
  bundle->radius.alive.timer.load = bundle->radius.alive.interval * SECTICKS;
  if (bundle->radius.alive.timer.load) {
    radius_Account(&bundle->radius, &bundle->radacct,
                   bundle->links, RAD_ALIVE, &bundle->ncp.ipcp.throughput);
    timer_Start(&bundle->radius.alive.timer);
  }
}
