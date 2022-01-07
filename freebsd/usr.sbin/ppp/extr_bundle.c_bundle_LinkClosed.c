
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct datalink {scalar_t__ state; TYPE_1__* physical; struct datalink* next; } ;
struct TYPE_5__ {scalar_t__ sessiontime; } ;
struct TYPE_6__ {int mp; } ;
struct bundle {TYPE_2__ radius; TYPE_3__ ncp; struct datalink* links; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 scalar_t__ DATALINK_CLOSED ;
 int PHASE_DEAD ;
 scalar_t__ PHYS_AUTO ;
 int bundle_DownInterface (struct bundle*) ;
 int bundle_NewPhase (struct bundle*,int ) ;
 int bundle_StopIdleTimer (struct bundle*) ;
 int bundle_StopSessionTimer (struct bundle*) ;
 int log_SetTtyCommandMode (struct datalink*) ;
 int mp_Down (int *) ;
 int ncp2initial (TYPE_3__*) ;

void
bundle_LinkClosed(struct bundle *bundle, struct datalink *dl)
{
  struct datalink *odl;
  int other_links;

  log_SetTtyCommandMode(dl);

  other_links = 0;
  for (odl = bundle->links; odl; odl = odl->next)
    if (odl != dl && odl->state != DATALINK_CLOSED)
      other_links++;

  if (!other_links) {
    if (dl->physical->type != PHYS_AUTO)
      bundle_DownInterface(bundle);
    ncp2initial(&bundle->ncp);
    mp_Down(&bundle->ncp.mp);
    bundle_NewPhase(bundle, PHASE_DEAD);

    if (bundle->radius.sessiontime)
      bundle_StopSessionTimer(bundle);

    bundle_StopIdleTimer(bundle);
  }
}
