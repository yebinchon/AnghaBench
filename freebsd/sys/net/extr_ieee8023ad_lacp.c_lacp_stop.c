
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_softc {int dummy; } ;
struct lacp_softc {int lsc_callout; int lsc_transit_callout; } ;


 int LACP_LOCK (struct lacp_softc*) ;
 struct lacp_softc* LACP_SOFTC (struct lagg_softc*) ;
 int LACP_UNLOCK (struct lacp_softc*) ;
 int callout_stop (int *) ;

void
lacp_stop(struct lagg_softc *sc)
{
 struct lacp_softc *lsc = LACP_SOFTC(sc);

 LACP_LOCK(lsc);
 callout_stop(&lsc->lsc_transit_callout);
 callout_stop(&lsc->lsc_callout);
 LACP_UNLOCK(lsc);
}
