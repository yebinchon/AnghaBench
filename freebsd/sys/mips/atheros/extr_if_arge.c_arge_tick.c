
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct arge_softc {int arge_stat_callout; scalar_t__ arge_miibus; } ;


 int ARGE_LOCK_ASSERT (struct arge_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct arge_softc*) ;
 struct mii_data* device_get_softc (scalar_t__) ;
 int hz ;
 int mii_tick (struct mii_data*) ;

__attribute__((used)) static void
arge_tick(void *xsc)
{
 struct arge_softc *sc = xsc;
 struct mii_data *mii;

 ARGE_LOCK_ASSERT(sc);

 if (sc->arge_miibus) {
  mii = device_get_softc(sc->arge_miibus);
  mii_tick(mii);
  callout_reset(&sc->arge_stat_callout, hz, arge_tick, sc);
 }
}
