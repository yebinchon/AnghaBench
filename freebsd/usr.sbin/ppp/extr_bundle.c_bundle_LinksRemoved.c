
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct datalink {struct datalink* next; } ;
struct TYPE_5__ {scalar_t__ sessiontime; } ;
struct TYPE_6__ {int all; int open; } ;
struct TYPE_4__ {int mp; } ;
struct bundle {TYPE_2__ radius; TYPE_3__ phys_type; TYPE_1__ ncp; struct datalink* links; } ;


 int PHYS_DDIAL ;
 int PHYS_DEDICATED ;
 int bundle_CalculateBandwidth (struct bundle*) ;
 int bundle_LinkAdded (struct bundle*,struct datalink*) ;
 int bundle_StopIdleTimer (struct bundle*) ;
 int bundle_StopSessionTimer (struct bundle*) ;
 int mp_CheckAutoloadTimer (int *) ;

void
bundle_LinksRemoved(struct bundle *bundle)
{
  struct datalink *dl;

  bundle->phys_type.all = bundle->phys_type.open = 0;
  for (dl = bundle->links; dl; dl = dl->next)
    bundle_LinkAdded(bundle, dl);

  bundle_CalculateBandwidth(bundle);
  mp_CheckAutoloadTimer(&bundle->ncp.mp);

  if ((bundle->phys_type.open & (PHYS_DEDICATED|PHYS_DDIAL))
      == bundle->phys_type.open) {

    if (bundle->radius.sessiontime)
      bundle_StopSessionTimer(bundle);

    bundle_StopIdleTimer(bundle);
   }
}
