
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sis_softc {struct ifnet* sis_ifp; } ;
struct ifnet {int if_capenable; int if_drv_flags; int if_snd; } ;


 int CSR_READ_4 (struct sis_softc*,int ) ;
 int CSR_WRITE_4 (struct sis_softc*,int ,int) ;
 int IFCAP_POLLING ;
 int IFCOUNTER_IERRORS ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int SIS_CSR ;
 int SIS_CSR_RX_ENABLE ;
 int SIS_IER ;
 int SIS_INTRS ;
 int SIS_ISR ;
 int SIS_ISR_RX_DESC_OK ;
 int SIS_ISR_RX_ERR ;
 int SIS_ISR_RX_IDLE ;
 int SIS_ISR_RX_OFLOW ;
 int SIS_ISR_RX_OK ;
 int SIS_ISR_SYSERR ;
 int SIS_ISR_TX_DESC_OK ;
 int SIS_ISR_TX_ERR ;
 int SIS_ISR_TX_IDLE ;
 int SIS_ISR_TX_OK ;
 int SIS_LOCK (struct sis_softc*) ;
 int SIS_SETBIT (struct sis_softc*,int ,int ) ;
 int SIS_UNLOCK (struct sis_softc*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int sis_initl (struct sis_softc*) ;
 int sis_rxeof (struct sis_softc*) ;
 int sis_startl (struct ifnet*) ;
 int sis_txeof (struct sis_softc*) ;

__attribute__((used)) static void
sis_intr(void *arg)
{
 struct sis_softc *sc;
 struct ifnet *ifp;
 uint32_t status;

 sc = arg;
 ifp = sc->sis_ifp;

 SIS_LOCK(sc);
 status = CSR_READ_4(sc, SIS_ISR);
 if ((status & SIS_INTRS) == 0) {

  SIS_UNLOCK(sc);
  return;
 }


 CSR_WRITE_4(sc, SIS_IER, 0);

 for (;(status & SIS_INTRS) != 0;) {
  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
   break;
  if (status &
      (SIS_ISR_TX_DESC_OK | SIS_ISR_TX_ERR |
      SIS_ISR_TX_OK | SIS_ISR_TX_IDLE) )
   sis_txeof(sc);

  if (status & (SIS_ISR_RX_DESC_OK | SIS_ISR_RX_OK |
      SIS_ISR_RX_ERR | SIS_ISR_RX_IDLE))
   sis_rxeof(sc);

  if (status & SIS_ISR_RX_OFLOW)
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);

  if (status & (SIS_ISR_RX_IDLE))
   SIS_SETBIT(sc, SIS_CSR, SIS_CSR_RX_ENABLE);

  if (status & SIS_ISR_SYSERR) {
   ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
   sis_initl(sc);
   SIS_UNLOCK(sc);
   return;
  }
  status = CSR_READ_4(sc, SIS_ISR);
 }

 if (ifp->if_drv_flags & IFF_DRV_RUNNING) {

  CSR_WRITE_4(sc, SIS_IER, 1);

  if (!IFQ_DRV_IS_EMPTY(&ifp->if_snd))
   sis_startl(ifp);
 }

 SIS_UNLOCK(sc);
}
