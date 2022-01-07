
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_softc {int dummy; } ;


 int SMC_LOCK (struct smc_softc*) ;
 int SMC_UNLOCK (struct smc_softc*) ;
 int smc_init_locked (struct smc_softc*) ;

__attribute__((used)) static void
smc_init(void *context)
{
 struct smc_softc *sc;

 sc = (struct smc_softc *)context;
 SMC_LOCK(sc);
 smc_init_locked(sc);
 SMC_UNLOCK(sc);
}
