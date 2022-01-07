
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct bge_softc {int bge_flags; scalar_t__ bge_asicrev; int bge_stat_ch; int bge_link_evt; int bge_ifp; int bge_link; int bge_miibus; } ;


 scalar_t__ BGE_ASICREV_BCM5700 ;
 int BGE_FLAG_5788 ;
 int BGE_FLAG_TBI ;
 int BGE_HCCMODE_COAL_NOW ;
 int BGE_HCC_MODE ;
 scalar_t__ BGE_IS_5705_PLUS (struct bge_softc*) ;
 int BGE_LOCK_ASSERT (struct bge_softc*) ;
 int BGE_MISC_LOCAL_CTL ;
 int BGE_MLC_INTR_SET ;
 int BGE_SETBIT (struct bge_softc*,int ,int ) ;
 int IFCAP_POLLING ;
 int bge_asf_driver_up (struct bge_softc*) ;
 int bge_stats_update (struct bge_softc*) ;
 int bge_stats_update_regs (struct bge_softc*) ;
 int bge_watchdog (struct bge_softc*) ;
 int callout_active (int *) ;
 scalar_t__ callout_pending (int *) ;
 int callout_reset (int *,int ,void (*) (void*),struct bge_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int if_getcapenable (int ) ;
 int mii_tick (struct mii_data*) ;

__attribute__((used)) static void
bge_tick(void *xsc)
{
 struct bge_softc *sc = xsc;
 struct mii_data *mii = ((void*)0);

 BGE_LOCK_ASSERT(sc);


 if (callout_pending(&sc->bge_stat_ch) ||
     !callout_active(&sc->bge_stat_ch))
  return;

 if (BGE_IS_5705_PLUS(sc))
  bge_stats_update_regs(sc);
 else
  bge_stats_update(sc);



 if ((sc->bge_flags & BGE_FLAG_TBI) == 0) {
  mii = device_get_softc(sc->bge_miibus);





  if (!sc->bge_link)
   mii_tick(mii);
 } else {
  {
  sc->bge_link_evt++;
  if (sc->bge_asicrev == BGE_ASICREV_BCM5700 ||
      sc->bge_flags & BGE_FLAG_5788)
   BGE_SETBIT(sc, BGE_MISC_LOCAL_CTL, BGE_MLC_INTR_SET);
  else
   BGE_SETBIT(sc, BGE_HCC_MODE, BGE_HCCMODE_COAL_NOW);
  }
 }

 bge_asf_driver_up(sc);
 bge_watchdog(sc);

 callout_reset(&sc->bge_stat_ch, hz, bge_tick, sc);
}
