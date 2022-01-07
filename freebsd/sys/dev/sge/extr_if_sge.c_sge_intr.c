
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sge_softc {struct ifnet* sge_ifp; } ;
struct ifnet {int if_drv_flags; int if_snd; } ;


 int CSR_READ_4 (struct sge_softc*,int ) ;
 int CSR_WRITE_4 (struct sge_softc*,int ,int) ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int INTR_RX_DONE ;
 int INTR_RX_IDLE ;
 int INTR_TX_DONE ;
 int INTR_TX_IDLE ;
 int IntrMask ;
 int IntrStatus ;
 int RX_CTL ;
 int RX_CTL_ENB ;
 int RX_CTL_POLL ;
 int SGE_INTRS ;
 int SGE_LOCK (struct sge_softc*) ;
 int SGE_UNLOCK (struct sge_softc*) ;
 int sge_rxeof (struct sge_softc*) ;
 int sge_start_locked (struct ifnet*) ;
 int sge_txeof (struct sge_softc*) ;

__attribute__((used)) static void
sge_intr(void *arg)
{
 struct sge_softc *sc;
 struct ifnet *ifp;
 uint32_t status;

 sc = arg;
 SGE_LOCK(sc);
 ifp = sc->sge_ifp;

 status = CSR_READ_4(sc, IntrStatus);
 if (status == 0xFFFFFFFF || (status & SGE_INTRS) == 0) {

  SGE_UNLOCK(sc);
  return;
 }

 CSR_WRITE_4(sc, IntrStatus, status);

 CSR_WRITE_4(sc, IntrMask, 0);
 for (;;) {
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
   break;
  if ((status & (INTR_RX_DONE | INTR_RX_IDLE)) != 0) {
   sge_rxeof(sc);

   if ((status & INTR_RX_IDLE) != 0)
    CSR_WRITE_4(sc, RX_CTL,
        0x1a00 | 0x000c | RX_CTL_POLL | RX_CTL_ENB);
  }
  if ((status & (INTR_TX_DONE | INTR_TX_IDLE)) != 0)
   sge_txeof(sc);
  status = CSR_READ_4(sc, IntrStatus);
  if ((status & SGE_INTRS) == 0)
   break;

  CSR_WRITE_4(sc, IntrStatus, status);
 }
 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {

  CSR_WRITE_4(sc, IntrMask, SGE_INTRS);
  if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   sge_start_locked(ifp);
 }
 SGE_UNLOCK(sc);
}
