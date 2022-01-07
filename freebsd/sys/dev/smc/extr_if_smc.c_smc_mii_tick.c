
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_softc {int smc_mii_tick_ch; int * smc_miibus; } ;


 int SMC_UNLOCK (struct smc_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct smc_softc*) ;
 int device_get_softc (int *) ;
 int hz ;
 int mii_tick (int ) ;

__attribute__((used)) static void
smc_mii_tick(void *context)
{
 struct smc_softc *sc;

 sc = (struct smc_softc *)context;

 if (sc->smc_miibus == ((void*)0))
  return;

 SMC_UNLOCK(sc);

 mii_tick(device_get_softc(sc->smc_miibus));
 callout_reset(&sc->smc_mii_tick_ch, hz, smc_mii_tick, sc);
}
