
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ifnet {int if_drv_flags; int if_snd; } ;
struct TYPE_2__ {int reset_brk_seq; } ;
struct ale_softc {int ale_morework; int ale_int_task; int ale_tq; int ale_dev; TYPE_1__ ale_stats; int ale_process_limit; struct ifnet* ale_ifp; } ;


 int ALE_INTRS ;
 int ALE_INTR_STATUS ;
 int ALE_LOCK (struct ale_softc*) ;
 int ALE_UNLOCK (struct ale_softc*) ;
 int CSR_READ_4 (struct ale_softc*,int ) ;
 int CSR_WRITE_4 (struct ale_softc*,int ,int) ;
 int EAGAIN ;
 int EIO ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int INTR_DIS_INT ;
 int INTR_DMA_RD_TO_RST ;
 int INTR_DMA_WR_TO_RST ;
 int INTR_RX_PKT ;
 int ale_init_locked (struct ale_softc*) ;
 int ale_rxeof (struct ale_softc*,int ) ;
 int ale_start_locked (struct ifnet*) ;
 int device_printf (int ,char*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
ale_int_task(void *arg, int pending)
{
 struct ale_softc *sc;
 struct ifnet *ifp;
 uint32_t status;
 int more;

 sc = (struct ale_softc *)arg;

 status = CSR_READ_4(sc, ALE_INTR_STATUS);
 ALE_LOCK(sc);
 if (sc->ale_morework != 0)
  status |= INTR_RX_PKT;
 if ((status & ALE_INTRS) == 0)
  goto done;


 CSR_WRITE_4(sc, ALE_INTR_STATUS, status | INTR_DIS_INT);

 ifp = sc->ale_ifp;
 more = 0;
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
  more = ale_rxeof(sc, sc->ale_process_limit);
  if (more == EAGAIN)
   sc->ale_morework = 1;
  else if (more == EIO) {
   sc->ale_stats.reset_brk_seq++;
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   ale_init_locked(sc);
   ALE_UNLOCK(sc);
   return;
  }

  if ((status & (INTR_DMA_RD_TO_RST | INTR_DMA_WR_TO_RST)) != 0) {
   if ((status & INTR_DMA_RD_TO_RST) != 0)
    device_printf(sc->ale_dev,
        "DMA read error! -- resetting\n");
   if ((status & INTR_DMA_WR_TO_RST) != 0)
    device_printf(sc->ale_dev,
        "DMA write error! -- resetting\n");
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   ale_init_locked(sc);
   ALE_UNLOCK(sc);
   return;
  }
  if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   ale_start_locked(ifp);
 }

 if (more == EAGAIN ||
     (CSR_READ_4(sc, ALE_INTR_STATUS) & ALE_INTRS) != 0) {
  ALE_UNLOCK(sc);
  taskqueue_enqueue(sc->ale_tq, &sc->ale_int_task);
  return;
 }

done:
 ALE_UNLOCK(sc);


 CSR_WRITE_4(sc, ALE_INTR_STATUS, 0x7FFFFFFF);
}
