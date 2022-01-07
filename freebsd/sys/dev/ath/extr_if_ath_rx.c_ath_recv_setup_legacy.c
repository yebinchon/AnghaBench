
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recv_sched_queue; int recv_sched; int recv_teardown; int recv_setup; int recv_rxbuf_init; int recv_tasklet; int recv_flush; int recv_stop; int recv_start; } ;
struct ath_softc {int sc_rx_statuslen; TYPE_1__ sc_rx; } ;
struct ath_desc {int dummy; } ;


 int ath_legacy_dma_rxsetup ;
 int ath_legacy_dma_rxteardown ;
 int ath_legacy_flushrecv ;
 int ath_legacy_recv_sched ;
 int ath_legacy_recv_sched_queue ;
 int ath_legacy_rx_tasklet ;
 int ath_legacy_rxbuf_init ;
 int ath_legacy_startrecv ;
 int ath_legacy_stoprecv ;

void
ath_recv_setup_legacy(struct ath_softc *sc)
{






 sc->sc_rx_statuslen = sizeof(struct ath_desc);

 sc->sc_rx.recv_start = ath_legacy_startrecv;
 sc->sc_rx.recv_stop = ath_legacy_stoprecv;
 sc->sc_rx.recv_flush = ath_legacy_flushrecv;
 sc->sc_rx.recv_tasklet = ath_legacy_rx_tasklet;
 sc->sc_rx.recv_rxbuf_init = ath_legacy_rxbuf_init;

 sc->sc_rx.recv_setup = ath_legacy_dma_rxsetup;
 sc->sc_rx.recv_teardown = ath_legacy_dma_rxteardown;
 sc->sc_rx.recv_sched = ath_legacy_recv_sched;
 sc->sc_rx.recv_sched_queue = ath_legacy_recv_sched_queue;
}
