
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_softc {int * smc_miibus; } ;
struct mii_data {int dummy; } ;
struct ifnet {struct smc_softc* if_softc; } ;


 int ENXIO ;
 struct mii_data* device_get_softc (int *) ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static int
smc_mii_ifmedia_upd(struct ifnet *ifp)
{
 struct smc_softc *sc;
 struct mii_data *mii;

 sc = ifp->if_softc;
 if (sc->smc_miibus == ((void*)0))
  return (ENXIO);

 mii = device_get_softc(sc->smc_miibus);
 return (mii_mediachg(mii));
}
