
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_softc {int nfe_stat_ch; int nfe_miibus; int nfe_ifp; } ;
struct mii_data {int dummy; } ;
typedef int if_t ;


 int NFE_LOCK_ASSERT (struct nfe_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct nfe_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;
 int nfe_stats_update (struct nfe_softc*) ;
 int nfe_watchdog (int ) ;

void
nfe_tick(void *xsc)
{
 struct nfe_softc *sc;
 struct mii_data *mii;
 if_t ifp;

 sc = (struct nfe_softc *)xsc;

 NFE_LOCK_ASSERT(sc);

 ifp = sc->nfe_ifp;

 mii = device_get_softc(sc->nfe_miibus);
 mii_tick(mii);
 nfe_stats_update(sc);
 nfe_watchdog(ifp);
 callout_reset(&sc->nfe_stat_ch, hz, nfe_tick, sc);
}
