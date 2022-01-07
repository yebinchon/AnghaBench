
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lacp_softc {int lsc_callout; int lsc_transit_callout; int * lsc_active_aggregator; int lsc_aggregators; } ;


 int KASSERT (int ,char*) ;
 int LACP_LOCK_DESTROY (struct lacp_softc*) ;
 int M_DEVBUF ;
 int TAILQ_EMPTY (int *) ;
 int callout_drain (int *) ;
 int free (struct lacp_softc*,int ) ;

void
lacp_detach(void *psc)
{
 struct lacp_softc *lsc = (struct lacp_softc *)psc;

 KASSERT(TAILQ_EMPTY(&lsc->lsc_aggregators),
     ("aggregators still active"));
 KASSERT(lsc->lsc_active_aggregator == ((void*)0),
     ("aggregator still attached"));

 callout_drain(&lsc->lsc_transit_callout);
 callout_drain(&lsc->lsc_callout);

 LACP_LOCK_DESTROY(lsc);
 free(lsc, M_DEVBUF);
}
