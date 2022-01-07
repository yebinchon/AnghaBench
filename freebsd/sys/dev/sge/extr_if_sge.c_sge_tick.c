
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_softc {int sge_flags; int sge_stat_ch; int sge_dev; int sge_miibus; struct ifnet* sge_ifp; } ;
struct mii_data {int dummy; } ;
struct ifnet {int if_snd; } ;


 int IFQ_DRV_IS_EMPTY (int *) ;
 int SGE_FLAG_LINK ;
 int SGE_LOCK_ASSERT (struct sge_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct sge_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;
 int sge_miibus_statchg (int ) ;
 int sge_start_locked (struct ifnet*) ;
 int sge_txeof (struct sge_softc*) ;
 int sge_watchdog (struct sge_softc*) ;

__attribute__((used)) static void
sge_tick(void *arg)
{
 struct sge_softc *sc;
 struct mii_data *mii;
 struct ifnet *ifp;

 sc = arg;
 SGE_LOCK_ASSERT(sc);

 ifp = sc->sge_ifp;
 mii = device_get_softc(sc->sge_miibus);
 mii_tick(mii);
 if ((sc->sge_flags & SGE_FLAG_LINK) == 0) {
  sge_miibus_statchg(sc->sge_dev);
  if ((sc->sge_flags & SGE_FLAG_LINK) != 0 &&
      !IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   sge_start_locked(ifp);
 }





 sge_txeof(sc);
 sge_watchdog(sc);
 callout_reset(&sc->sge_stat_ch, hz, sge_tick, sc);
}
