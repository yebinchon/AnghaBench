
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_xlpge_softc {int xlpge_callout; scalar_t__ mii_bus; } ;
struct mii_data {int dummy; } ;


 int KASSERT (int ,char*) ;
 int callout_reset (int *,int ,void (*) (void*),struct nlm_xlpge_softc*) ;
 struct mii_data* device_get_softc (scalar_t__) ;
 int hz ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
nlm_mii_pollstat(void *arg)
{
 struct nlm_xlpge_softc *sc = (struct nlm_xlpge_softc *)arg;
 struct mii_data *mii = ((void*)0);

 if (sc->mii_bus) {
  mii = device_get_softc(sc->mii_bus);

  KASSERT(mii != ((void*)0), ("mii ptr is NULL"));

  mii_pollstat(mii);

  callout_reset(&sc->xlpge_callout, hz,
      nlm_mii_pollstat, sc);
 }
}
