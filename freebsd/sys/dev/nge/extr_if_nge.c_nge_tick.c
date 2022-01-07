
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nge_softc {int nge_flags; int nge_stat_ch; int nge_dev; int nge_miibus; } ;
struct mii_data {int dummy; } ;


 int NGE_FLAG_LINK ;
 int NGE_LOCK_ASSERT (struct nge_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct nge_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;
 int nge_miibus_statchg (int ) ;
 int nge_stats_update (struct nge_softc*) ;
 int nge_watchdog (struct nge_softc*) ;

__attribute__((used)) static void
nge_tick(void *xsc)
{
 struct nge_softc *sc;
 struct mii_data *mii;

 sc = xsc;
 NGE_LOCK_ASSERT(sc);
 mii = device_get_softc(sc->nge_miibus);
 mii_tick(mii);







 if ((sc->nge_flags & NGE_FLAG_LINK) == 0)
  nge_miibus_statchg(sc->nge_dev);
 nge_stats_update(sc);
 nge_watchdog(sc);
 callout_reset(&sc->nge_stat_ch, hz, nge_tick, sc);
}
