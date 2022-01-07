
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct ifnet {int if_drv_flags; int if_snd; } ;
struct TYPE_9__ {int flags; struct ifnet* ifp; } ;
typedef TYPE_1__ ae_softc_t ;


 int AE_FLAG_TXAVAIL ;
 int AE_ISR_DISABLE ;
 int AE_ISR_DMAR_TIMEOUT ;
 int AE_ISR_DMAW_TIMEOUT ;
 int AE_ISR_PHY_LINKDOWN ;
 int AE_ISR_REG ;
 int AE_ISR_RX_EVENT ;
 int AE_ISR_TX_EVENT ;
 int AE_LOCK (TYPE_1__*) ;
 int AE_READ_4 (TYPE_1__*,int ) ;
 int AE_UNLOCK (TYPE_1__*) ;
 int AE_WRITE_4 (TYPE_1__*,int ,int) ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int ae_init_locked (TYPE_1__*) ;
 int ae_rx_intr (TYPE_1__*) ;
 int ae_start_locked (struct ifnet*) ;
 int ae_tx_intr (TYPE_1__*) ;
 int if_printf (struct ifnet*,char*,int) ;

__attribute__((used)) static void
ae_int_task(void *arg, int pending)
{
 ae_softc_t *sc;
 struct ifnet *ifp;
 uint32_t val;

 sc = (ae_softc_t *)arg;

 AE_LOCK(sc);

 ifp = sc->ifp;

 val = AE_READ_4(sc, AE_ISR_REG);
 if (val == 0) {
  AE_UNLOCK(sc);
  return;
 }




 AE_WRITE_4(sc, AE_ISR_REG, val | AE_ISR_DISABLE);





 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
  if ((val & (AE_ISR_DMAR_TIMEOUT | AE_ISR_DMAW_TIMEOUT |
      AE_ISR_PHY_LINKDOWN)) != 0) {
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   ae_init_locked(sc);
   AE_UNLOCK(sc);
   return;
  }
  if ((val & AE_ISR_TX_EVENT) != 0)
   ae_tx_intr(sc);
  if ((val & AE_ISR_RX_EVENT) != 0)
   ae_rx_intr(sc);



  AE_WRITE_4(sc, AE_ISR_REG, 0);

  if ((sc->flags & AE_FLAG_TXAVAIL) != 0) {
   if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
    ae_start_locked(ifp);
  }
 }

 AE_UNLOCK(sc);
}
