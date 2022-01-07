
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recv_sched_queue; int recv_sched; int recv_teardown; int recv_setup; int recv_rxbuf_init; int recv_tasklet; int recv_flush; int recv_start; int recv_stop; } ;
struct ath_softc {int sc_edma_bufsize; int sc_rx_statuslen; TYPE_1__ sc_rx; int sc_dev; int sc_ah; } ;


 int ath_edma_dma_rxsetup ;
 int ath_edma_dma_rxteardown ;
 int ath_edma_recv_flush ;
 int ath_edma_recv_sched ;
 int ath_edma_recv_sched_queue ;
 int ath_edma_recv_tasklet ;
 int ath_edma_rxbuf_init ;
 int ath_edma_startrecv ;
 int ath_edma_stoprecv ;
 int ath_hal_getrxstatuslen (int ,int*) ;
 int ath_hal_setrxbufsize (int ,int) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int) ;

void
ath_recv_setup_edma(struct ath_softc *sc)
{


 sc->sc_edma_bufsize = 4096;


 (void) ath_hal_getrxstatuslen(sc->sc_ah, &sc->sc_rx_statuslen);


 (void) ath_hal_setrxbufsize(sc->sc_ah, sc->sc_edma_bufsize -
     sc->sc_rx_statuslen);

 if (bootverbose) {
  device_printf(sc->sc_dev, "RX status length: %d\n",
      sc->sc_rx_statuslen);
  device_printf(sc->sc_dev, "RX buffer size: %d\n",
      sc->sc_edma_bufsize);
 }

 sc->sc_rx.recv_stop = ath_edma_stoprecv;
 sc->sc_rx.recv_start = ath_edma_startrecv;
 sc->sc_rx.recv_flush = ath_edma_recv_flush;
 sc->sc_rx.recv_tasklet = ath_edma_recv_tasklet;
 sc->sc_rx.recv_rxbuf_init = ath_edma_rxbuf_init;

 sc->sc_rx.recv_setup = ath_edma_dma_rxsetup;
 sc->sc_rx.recv_teardown = ath_edma_dma_rxteardown;

 sc->sc_rx.recv_sched = ath_edma_recv_sched;
 sc->sc_rx.recv_sched_queue = ath_edma_recv_sched_queue;
}
