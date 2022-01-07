
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct fsm {scalar_t__ proto; TYPE_6__* link; TYPE_1__* bundle; } ;
struct datalink {scalar_t__ state; TYPE_5__* physical; struct datalink* next; } ;
struct TYPE_18__ {scalar_t__ active; } ;
struct TYPE_17__ {TYPE_8__ mp; } ;
struct TYPE_12__ {scalar_t__ sessiontime; } ;
struct bundle {TYPE_7__ ncp; struct datalink* links; scalar_t__ upat; TYPE_2__ radius; } ;
struct TYPE_16__ {int name; } ;
struct TYPE_13__ {struct fsm fsm; } ;
struct TYPE_14__ {TYPE_3__ lcp; } ;
struct TYPE_15__ {TYPE_4__ link; } ;
struct TYPE_11__ {int ncp; } ;


 scalar_t__ DATALINK_CLOSED ;
 scalar_t__ DATALINK_HANGUP ;
 int LogALERT ;
 scalar_t__ PROTO_LCP ;
 int bundle_CalculateBandwidth (struct bundle*) ;
 int bundle_LinksRemoved (struct bundle*) ;
 int bundle_StopIdleTimer (struct bundle*) ;
 int bundle_StopSessionTimer (struct bundle*) ;
 scalar_t__ isncp (scalar_t__) ;
 int log_Printf (int ,char*,int ) ;
 int mp_Down (TYPE_8__*) ;
 int mp_LinkLost (TYPE_8__*,struct datalink*) ;
 int mp_StopAutoloadTimer (TYPE_8__*) ;
 int ncp2initial (TYPE_7__*) ;
 scalar_t__ ncp_LayersOpen (int *) ;

__attribute__((used)) static void
bundle_LayerDown(void *v, struct fsm *fp)
{
  struct bundle *bundle = (struct bundle *)v;

  if (isncp(fp->proto)) {
    if (ncp_LayersOpen(&fp->bundle->ncp) == 0) {

      if (bundle->radius.sessiontime)
        bundle_StopSessionTimer(bundle);

      bundle_StopIdleTimer(bundle);
      bundle->upat = 0;
      mp_StopAutoloadTimer(&bundle->ncp.mp);
    }
  } else if (fp->proto == PROTO_LCP) {
    struct datalink *dl;
    struct datalink *lost;
    int others_active;

    bundle_LinksRemoved(bundle);

    lost = ((void*)0);
    others_active = 0;
    for (dl = bundle->links; dl; dl = dl->next) {
      if (fp == &dl->physical->link.lcp.fsm)
        lost = dl;
      else if (dl->state != DATALINK_CLOSED && dl->state != DATALINK_HANGUP)
        others_active++;
    }

    if (bundle->ncp.mp.active) {
      bundle_CalculateBandwidth(bundle);

      if (lost)
        mp_LinkLost(&bundle->ncp.mp, lost);
      else
        log_Printf(LogALERT, "Oops, lost an unrecognised datalink (%s) !\n",
                   fp->link->name);
    }

    if (!others_active) {

      ncp2initial(&bundle->ncp);
      mp_Down(&bundle->ncp.mp);
    }
  }
}
