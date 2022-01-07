
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_softc {TYPE_1__* smc_ifp; scalar_t__ smc_mask; int smc_mii_tick_ch; int smc_watchdog; } ;
struct TYPE_2__ {int if_drv_flags; int if_capenable; } ;


 int IFCAP_POLLING ;
 int IFF_DRV_RUNNING ;
 int MSK ;
 int RCR ;
 int SMC_ASSERT_LOCKED (struct smc_softc*) ;
 int TCR ;
 int callout_stop (int *) ;
 int ether_poll_deregister (TYPE_1__*) ;
 int smc_select_bank (struct smc_softc*,int) ;
 int smc_write_1 (struct smc_softc*,int ,int ) ;
 int smc_write_2 (struct smc_softc*,int ,int ) ;

__attribute__((used)) static void
smc_stop(struct smc_softc *sc)
{

 SMC_ASSERT_LOCKED(sc);




 callout_stop(&sc->smc_watchdog);
 callout_stop(&sc->smc_mii_tick_ch);




 smc_select_bank(sc, 2);
 sc->smc_mask = 0;
 smc_write_1(sc, MSK, 0);
 smc_select_bank(sc, 0);
 smc_write_2(sc, TCR, 0);
 smc_write_2(sc, RCR, 0);

 sc->smc_ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
}
