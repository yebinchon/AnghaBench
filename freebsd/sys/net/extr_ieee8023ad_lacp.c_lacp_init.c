
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_softc {int dummy; } ;
struct lacp_softc {int lsc_callout; } ;


 int LACP_LOCK (struct lacp_softc*) ;
 struct lacp_softc* LACP_SOFTC (struct lagg_softc*) ;
 int LACP_UNLOCK (struct lacp_softc*) ;
 int callout_reset (int *,int ,int ,struct lacp_softc*) ;
 int hz ;
 int lacp_tick ;

void
lacp_init(struct lagg_softc *sc)
{
 struct lacp_softc *lsc = LACP_SOFTC(sc);

 LACP_LOCK(lsc);
 callout_reset(&lsc->lsc_callout, hz, lacp_tick, lsc);
 LACP_UNLOCK(lsc);
}
