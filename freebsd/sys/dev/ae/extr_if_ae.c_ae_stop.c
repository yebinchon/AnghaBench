
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct ifnet {int if_drv_flags; } ;
struct TYPE_9__ {int dev; int tick_ch; scalar_t__ wd_timer; int flags; struct ifnet* ifp; } ;
typedef TYPE_1__ ae_softc_t ;


 int AE_DMAREAD_EN ;
 int AE_DMAREAD_REG ;
 int AE_DMAWRITE_EN ;
 int AE_DMAWRITE_REG ;
 int AE_FLAG_LINK ;
 int AE_IDLE_REG ;
 int AE_IDLE_TIMEOUT ;
 int AE_IMR_REG ;
 int AE_ISR_REG ;
 int AE_LOCK_ASSERT (TYPE_1__*) ;
 scalar_t__ AE_READ_4 (TYPE_1__*,int ) ;
 int AE_WRITE_1 (TYPE_1__*,int ,int ) ;
 int AE_WRITE_4 (TYPE_1__*,int ,int) ;
 int DELAY (int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int ae_stop_rxmac (TYPE_1__*) ;
 int ae_stop_txmac (TYPE_1__*) ;
 int callout_stop (int *) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
ae_stop(ae_softc_t *sc)
{
 struct ifnet *ifp;
 int i;

 AE_LOCK_ASSERT(sc);

 ifp = sc->ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc->flags &= ~AE_FLAG_LINK;
 sc->wd_timer = 0;
 callout_stop(&sc->tick_ch);




 AE_WRITE_4(sc, AE_IMR_REG, 0);
 AE_WRITE_4(sc, AE_ISR_REG, 0xffffffff);




 ae_stop_txmac(sc);
 ae_stop_rxmac(sc);




 AE_WRITE_1(sc, AE_DMAREAD_REG, ~AE_DMAREAD_EN);
 AE_WRITE_1(sc, AE_DMAWRITE_REG, ~AE_DMAWRITE_EN);




 for (i = 0; i < AE_IDLE_TIMEOUT; i++) {
  if (AE_READ_4(sc, AE_IDLE_REG) == 0)
   break;
  DELAY(100);
 }
 if (i == AE_IDLE_TIMEOUT)
  device_printf(sc->dev, "could not enter idle state in stop.\n");
}
