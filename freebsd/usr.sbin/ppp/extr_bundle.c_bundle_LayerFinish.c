
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsm {int proto; } ;
struct datalink {scalar_t__ state; struct datalink* next; } ;
struct TYPE_2__ {int mp; } ;
struct bundle {TYPE_1__ ncp; struct datalink* links; } ;


 int CLOSE_STAYDOWN ;
 scalar_t__ DATALINK_OPEN ;
 scalar_t__ PHASE_DEAD ;
 int PHASE_TERMINATE ;
 int bundle_NewPhase (struct bundle*,int ) ;
 scalar_t__ bundle_Phase (struct bundle*) ;
 int datalink_Close (struct datalink*,int ) ;
 int fsm2initial (struct fsm*) ;
 scalar_t__ isncp (int ) ;
 int mp_Down (int *) ;
 int ncp_LayersUnfinished (TYPE_1__*) ;

__attribute__((used)) static void
bundle_LayerFinish(void *v, struct fsm *fp)
{






  struct bundle *bundle = (struct bundle *)v;
  struct datalink *dl;

  if (isncp(fp->proto) && !ncp_LayersUnfinished(&bundle->ncp)) {
    if (bundle_Phase(bundle) != PHASE_DEAD)
      bundle_NewPhase(bundle, PHASE_TERMINATE);
    for (dl = bundle->links; dl; dl = dl->next)
      if (dl->state == DATALINK_OPEN)
        datalink_Close(dl, CLOSE_STAYDOWN);
    fsm2initial(fp);
    mp_Down(&bundle->ncp.mp);
  }
}
