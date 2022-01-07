
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {TYPE_3__ timer; } ;
struct datalink {scalar_t__ state; TYPE_2__ dial; TYPE_1__* physical; int name; struct datalink* next; } ;
struct bundle {struct datalink* links; } ;
struct TYPE_4__ {int type; } ;


 scalar_t__ DATALINK_CLOSED ;
 scalar_t__ DATALINK_OPENING ;
 scalar_t__ DATALINK_READY ;
 int PHYS_AUTO ;
 scalar_t__ TIMER_RUNNING ;
 int datalink_Up (struct datalink*,int,int) ;
 int strcasecmp (int ,char const*) ;
 int timer_Stop (TYPE_3__*) ;

void
bundle_Open(struct bundle *bundle, const char *name, int mask, int force)
{



  struct datalink *dl;

  for (dl = bundle->links; dl; dl = dl->next)
    if (name == ((void*)0) || !strcasecmp(dl->name, name)) {
      if ((mask & dl->physical->type) &&
          (dl->state == DATALINK_CLOSED ||
           (force && dl->state == DATALINK_OPENING &&
            dl->dial.timer.state == TIMER_RUNNING) ||
           dl->state == DATALINK_READY)) {
        timer_Stop(&dl->dial.timer);
        datalink_Up(dl, 1, 1);
        if (mask & PHYS_AUTO)
          break;
      }
      if (name != ((void*)0))
        break;
    }
}
