
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_softc {int dummy; } ;
struct ifnet {struct smc_softc* if_softc; } ;


 int SMC_LOCK (struct smc_softc*) ;
 int SMC_UNLOCK (struct smc_softc*) ;
 int smc_start_locked (struct ifnet*) ;

__attribute__((used)) static void
smc_start(struct ifnet *ifp)
{
 struct smc_softc *sc;

 sc = ifp->if_softc;
 SMC_LOCK(sc);
 smc_start_locked(ifp);
 SMC_UNLOCK(sc);
}
