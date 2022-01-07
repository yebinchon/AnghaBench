
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int if_drv_flags; int if_snd; } ;
struct et_softc {int sc_timer; int dev; struct ifnet* ifp; } ;


 int CSR_READ_4 (struct et_softc*,int ) ;
 int CSR_WRITE_4 (struct et_softc*,int ,int) ;
 int ET_INTRS ;
 int ET_INTR_MASK ;
 int ET_INTR_RXDMA ;
 int ET_INTR_RXDMA_ERROR ;
 int ET_INTR_STATUS ;
 int ET_INTR_TIMER ;
 int ET_INTR_TXDMA ;
 int ET_INTR_TXDMA_ERROR ;
 int ET_LOCK (struct et_softc*) ;
 int ET_TIMER ;
 int ET_UNLOCK (struct et_softc*) ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int device_printf (int ,char*,int) ;
 int et_init_locked (struct et_softc*) ;
 int et_rxeof (struct et_softc*) ;
 int et_start_locked (struct ifnet*) ;
 int et_txeof (struct et_softc*) ;

__attribute__((used)) static void
et_intr(void *xsc)
{
 struct et_softc *sc;
 struct ifnet *ifp;
 uint32_t status;

 sc = xsc;
 ET_LOCK(sc);
 ifp = sc->ifp;
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  goto done;

 status = CSR_READ_4(sc, ET_INTR_STATUS);
 if ((status & ET_INTRS) == 0)
  goto done;


 CSR_WRITE_4(sc, ET_INTR_MASK, 0xffffffff);

 if (status & (ET_INTR_RXDMA_ERROR | ET_INTR_TXDMA_ERROR)) {
  device_printf(sc->dev, "DMA error(0x%08x) -- resetting\n",
      status);
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  et_init_locked(sc);
  ET_UNLOCK(sc);
  return;
 }
 if (status & ET_INTR_RXDMA)
  et_rxeof(sc);
 if (status & (ET_INTR_TXDMA | ET_INTR_TIMER))
  et_txeof(sc);
 if (status & ET_INTR_TIMER)
  CSR_WRITE_4(sc, ET_TIMER, sc->sc_timer);
 if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
  CSR_WRITE_4(sc, ET_INTR_MASK, ~ET_INTRS);
  if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   et_start_locked(ifp);
 }
done:
 ET_UNLOCK(sc);
}
