
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_softc {int * smc_mii_tick; int smc_mii_tick_ch; struct ifnet* smc_ifp; } ;
struct ifnet {int if_drv_flags; int if_capenable; } ;


 int IFCAP_POLLING ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int SMC_ASSERT_LOCKED (struct smc_softc*) ;
 int SMC_LOCK (struct smc_softc*) ;
 int SMC_UNLOCK (struct smc_softc*) ;
 int callout_reset (int *,int ,int *,struct smc_softc*) ;
 int ether_poll_register (int ,struct ifnet*) ;
 int hz ;
 int smc_enable (struct smc_softc*) ;
 int smc_poll ;
 int smc_reset (struct smc_softc*) ;
 int smc_start_locked (struct ifnet*) ;

__attribute__((used)) static void
smc_init_locked(struct smc_softc *sc)
{
 struct ifnet *ifp;

 SMC_ASSERT_LOCKED(sc);
 ifp = sc->smc_ifp;
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;

 smc_reset(sc);
 smc_enable(sc);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 smc_start_locked(ifp);

 if (sc->smc_mii_tick != ((void*)0))
  callout_reset(&sc->smc_mii_tick_ch, hz, sc->smc_mii_tick, sc);







}
