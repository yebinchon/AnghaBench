
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct smc_softc {int smc_mask; int smc_tx; int smc_tq; int smc_watchdog; int smc_rx; int smc_dev; } ;
struct ifnet {int if_capenable; struct smc_softc* if_softc; } ;


 int ACK ;
 int ALLOC_INT ;
 int ECR ;
 int ECR_MULCOL_MASK ;
 int ECR_MULCOL_SHIFT ;
 int ECR_SNGLCOL_MASK ;
 int ECR_SNGLCOL_SHIFT ;
 int EPHSR ;
 int EPHSR_TX_SUC ;
 int FIFO_EMPTY ;
 int FIFO_TX ;
 int IFCAP_POLLING ;
 int IFCOUNTER_COLLISIONS ;
 int IFCOUNTER_IERRORS ;
 int IST ;
 int MMUCR ;
 int MMUCR_CMD_RELEASE_PKT ;
 int MSK ;
 int PNR ;
 int PTR ;
 int PTR_AUTO_INCR ;
 int PTR_READ ;
 int RCV_INT ;
 int RX_OVRN_INT ;
 int SMC_LOCK (struct smc_softc*) ;
 int SMC_UNLOCK (struct smc_softc*) ;
 int TCR ;
 int TCR_PAD_EN ;
 int TCR_TXENA ;
 int TX_EMPTY_INT ;
 int TX_INT ;
 int callout_stop (int *) ;
 int device_printf (int ,char*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int smc_mmu_wait (struct smc_softc*) ;
 int smc_read_1 (struct smc_softc*,int ) ;
 int smc_read_2 (struct smc_softc*,int ) ;
 int smc_select_bank (struct smc_softc*,int) ;
 int smc_write_1 (struct smc_softc*,int ,int) ;
 int smc_write_2 (struct smc_softc*,int ,int) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
smc_task_intr(void *context, int pending)
{
 struct smc_softc *sc;
 struct ifnet *ifp;
 u_int status, packet, counter, tcr;

 (void)pending;
 ifp = (struct ifnet *)context;
 sc = ifp->if_softc;

 SMC_LOCK(sc);

 smc_select_bank(sc, 2);




 status = smc_read_1(sc, IST) & sc->smc_mask;




 if (status & TX_INT) {



  packet = smc_read_1(sc, FIFO_TX);
  if ((packet & FIFO_EMPTY) == 0) {
   callout_stop(&sc->smc_watchdog);
   smc_select_bank(sc, 2);
   smc_write_1(sc, PNR, packet);
   smc_write_2(sc, PTR, 0 | PTR_READ |
       PTR_AUTO_INCR);
   smc_select_bank(sc, 0);
   tcr = smc_read_2(sc, EPHSR);





   smc_select_bank(sc, 2);
   smc_mmu_wait(sc);
   smc_write_2(sc, MMUCR, MMUCR_CMD_RELEASE_PKT);

   smc_select_bank(sc, 0);
   tcr = smc_read_2(sc, TCR);
   tcr |= TCR_TXENA | TCR_PAD_EN;
   smc_write_2(sc, TCR, tcr);
   smc_select_bank(sc, 2);
   taskqueue_enqueue(sc->smc_tq, &sc->smc_tx);
  }




  smc_write_1(sc, ACK, TX_INT);
 }




 if (status & RCV_INT) {
  smc_write_1(sc, ACK, RCV_INT);
  sc->smc_mask &= ~RCV_INT;
  taskqueue_enqueue(sc->smc_tq, &sc->smc_rx);
 }




 if (status & ALLOC_INT) {
  smc_write_1(sc, ACK, ALLOC_INT);
  sc->smc_mask &= ~ALLOC_INT;
  taskqueue_enqueue(sc->smc_tq, &sc->smc_tx);
 }




 if (status & RX_OVRN_INT) {
  smc_write_1(sc, ACK, RX_OVRN_INT);
  if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
 }




 if (status & TX_EMPTY_INT) {
  smc_write_1(sc, ACK, TX_EMPTY_INT);
  sc->smc_mask &= ~TX_EMPTY_INT;
  callout_stop(&sc->smc_watchdog);




  smc_select_bank(sc, 0);
  counter = smc_read_2(sc, ECR);
  smc_select_bank(sc, 2);
  if_inc_counter(ifp, IFCOUNTER_COLLISIONS,
      ((counter & ECR_SNGLCOL_MASK) >> ECR_SNGLCOL_SHIFT) +
      ((counter & ECR_MULCOL_MASK) >> ECR_MULCOL_SHIFT));




  taskqueue_enqueue(sc->smc_tq, &sc->smc_tx);
 }




 smc_select_bank(sc, 2);
 if ((ifp->if_capenable & IFCAP_POLLING) == 0)
  smc_write_1(sc, MSK, sc->smc_mask);

 SMC_UNLOCK(sc);
}
