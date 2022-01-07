
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct ifnet {int dummy; } ;
struct atse_softc {int atse_flags; int atse_tick; int atse_dev; int atse_miibus; struct ifnet* atse_ifp; } ;


 int ATSE_FLAGS_LINK ;
 int ATSE_LOCK_ASSERT (struct atse_softc*) ;
 int atse_miibus_statchg (int ) ;
 int callout_reset (int *,int ,void (*) (void*),struct atse_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;

__attribute__((used)) static void
atse_tick(void *xsc)
{
 struct atse_softc *sc;
 struct mii_data *mii;
 struct ifnet *ifp;

 sc = (struct atse_softc *)xsc;
 ATSE_LOCK_ASSERT(sc);
 ifp = sc->atse_ifp;

 mii = device_get_softc(sc->atse_miibus);
 mii_tick(mii);
 if ((sc->atse_flags & ATSE_FLAGS_LINK) == 0) {
  atse_miibus_statchg(sc->atse_dev);
 }

 callout_reset(&sc->atse_tick, hz, atse_tick, sc);
}
