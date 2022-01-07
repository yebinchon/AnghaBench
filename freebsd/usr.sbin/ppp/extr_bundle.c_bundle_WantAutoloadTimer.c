
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct datalink {scalar_t__ state; TYPE_1__* physical; struct datalink* next; } ;
struct bundle {scalar_t__ phase; struct datalink* links; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ DATALINK_OPEN ;
 scalar_t__ PHASE_NETWORK ;
 scalar_t__ PHYS_AUTO ;

int
bundle_WantAutoloadTimer(struct bundle *bundle)
{
  struct datalink *dl;
  int autolink, opened;

  if (bundle->phase == PHASE_NETWORK) {
    for (autolink = opened = 0, dl = bundle->links; dl; dl = dl->next)
      if (dl->physical->type == PHYS_AUTO) {
        if (++autolink == 2 || (autolink == 1 && opened))

          return 1;
      } else if (dl->state == DATALINK_OPEN) {
        opened++;
        if (autolink)

          return 1;
      }
  }

  return 0;
}
