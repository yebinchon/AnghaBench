
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vte_softc {struct ifnet* vte_ifp; } ;
struct ifnet {int if_drv_flags; int if_snd; } ;


 int CSR_READ_2 (struct vte_softc*,int ) ;
 int CSR_WRITE_2 (struct vte_softc*,int ,int) ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int MISR_EVENT_CNT_OFLOW ;
 int MISR_RX_DESC_UNAVAIL ;
 int MISR_RX_DONE ;
 int MISR_RX_FIFO_FULL ;
 int MISR_TX_DONE ;
 int VTE_INTRS ;
 int VTE_LOCK (struct vte_softc*) ;
 int VTE_MIER ;
 int VTE_MISR ;
 int VTE_UNLOCK (struct vte_softc*) ;
 int vte_rxeof (struct vte_softc*) ;
 int vte_start_locked (struct vte_softc*) ;
 int vte_stats_update (struct vte_softc*) ;
 int vte_txeof (struct vte_softc*) ;

__attribute__((used)) static void
vte_intr(void *arg)
{
 struct vte_softc *sc;
 struct ifnet *ifp;
 uint16_t status;
 int n;

 sc = (struct vte_softc *)arg;
 VTE_LOCK(sc);

 ifp = sc->vte_ifp;

 status = CSR_READ_2(sc, VTE_MISR);
 if ((status & VTE_INTRS) == 0) {

  VTE_UNLOCK(sc);
  return;
 }


 CSR_WRITE_2(sc, VTE_MIER, 0);
 for (n = 8; (status & VTE_INTRS) != 0;) {
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
   break;
  if ((status & (MISR_RX_DONE | MISR_RX_DESC_UNAVAIL |
      MISR_RX_FIFO_FULL)) != 0)
   vte_rxeof(sc);
  if ((status & MISR_TX_DONE) != 0)
   vte_txeof(sc);
  if ((status & MISR_EVENT_CNT_OFLOW) != 0)
   vte_stats_update(sc);
  if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   vte_start_locked(sc);
  if (--n > 0)
   status = CSR_READ_2(sc, VTE_MISR);
  else
   break;
 }

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {

  CSR_WRITE_2(sc, VTE_MIER, VTE_INTRS);
 }
 VTE_UNLOCK(sc);
}
