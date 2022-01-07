
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ste_softc {int ste_flags; int ste_callout; int ste_dev; int ste_miibus; } ;
struct mii_data {int dummy; } ;


 int STE_FLAG_LINK ;
 int STE_LOCK_ASSERT (struct ste_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct ste_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;
 int ste_miibus_statchg (int ) ;
 int ste_stats_update (struct ste_softc*) ;
 int ste_txeoc (struct ste_softc*) ;
 int ste_txeof (struct ste_softc*) ;
 int ste_watchdog (struct ste_softc*) ;

__attribute__((used)) static void
ste_tick(void *arg)
{
 struct ste_softc *sc;
 struct mii_data *mii;

 sc = (struct ste_softc *)arg;

 STE_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->ste_miibus);
 mii_tick(mii);





 if ((sc->ste_flags & STE_FLAG_LINK) == 0)
  ste_miibus_statchg(sc->ste_dev);





 ste_txeof(sc);
 ste_txeoc(sc);
 ste_stats_update(sc);
 ste_watchdog(sc);
 callout_reset(&sc->ste_callout, hz, ste_tick, sc);
}
