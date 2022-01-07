
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_softc {int * smc_miibus; } ;


 int device_get_softc (int *) ;
 int mii_mediachg (int ) ;

__attribute__((used)) static void
smc_mii_mediachg(struct smc_softc *sc)
{

 if (sc->smc_miibus == ((void*)0))
  return;
 mii_mediachg(device_get_softc(sc->smc_miibus));
}
