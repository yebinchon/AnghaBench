
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_softc {int sis_flags; int sis_stat_ch; int sis_dev; int sis_miibus; } ;
struct mii_data {int dummy; } ;


 int SIS_FLAG_LINK ;
 int SIS_LOCK_ASSERT (struct sis_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct sis_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;
 int sis_miibus_statchg (int ) ;
 int sis_watchdog (struct sis_softc*) ;

__attribute__((used)) static void
sis_tick(void *xsc)
{
 struct sis_softc *sc;
 struct mii_data *mii;

 sc = xsc;
 SIS_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->sis_miibus);
 mii_tick(mii);
 sis_watchdog(sc);
 if ((sc->sis_flags & SIS_FLAG_LINK) == 0)
  sis_miibus_statchg(sc->sis_dev);
 callout_reset(&sc->sis_stat_ch, hz, sis_tick, sc);
}
