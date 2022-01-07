
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_if_softc {int msk_flags; int msk_tick_ch; int msk_softc; int msk_if_dev; int msk_miibus; } ;
struct mii_data {int dummy; } ;


 int MSK_FLAG_LINK ;
 int MSK_IF_LOCK_ASSERT (struct msk_if_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct msk_if_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;
 int msk_handle_events (int ) ;
 int msk_miibus_statchg (int ) ;
 int msk_watchdog (struct msk_if_softc*) ;

__attribute__((used)) static void
msk_tick(void *xsc_if)
{
 struct msk_if_softc *sc_if;
 struct mii_data *mii;

 sc_if = xsc_if;

 MSK_IF_LOCK_ASSERT(sc_if);

 mii = device_get_softc(sc_if->msk_miibus);

 mii_tick(mii);
 if ((sc_if->msk_flags & MSK_FLAG_LINK) == 0)
  msk_miibus_statchg(sc_if->msk_if_dev);
 msk_handle_events(sc_if->msk_softc);
 msk_watchdog(sc_if);
 callout_reset(&sc_if->msk_tick_ch, hz, msk_tick, sc_if);
}
