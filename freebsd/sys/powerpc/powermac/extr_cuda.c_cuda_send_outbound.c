
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuda_softc {int sc_waiting; scalar_t__ sc_state; int * sc_out; int sc_dev; int sc_freeq; int sc_outq; scalar_t__ sc_sent; scalar_t__ sc_out_length; int sc_mutex; } ;
struct cuda_packet {scalar_t__ len; int type; } ;


 scalar_t__ CUDA_IDLE ;
 scalar_t__ CUDA_OUT ;
 int DELAY (int) ;
 int MA_OWNED ;
 struct cuda_packet* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct cuda_packet*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int cuda_ack_off (struct cuda_softc*) ;
 int cuda_intr_state (struct cuda_softc*) ;
 int cuda_out (struct cuda_softc*) ;
 int cuda_poll (int ) ;
 int cuda_tip (struct cuda_softc*) ;
 int cuda_write_reg (struct cuda_softc*,int ,int ) ;
 int memcpy (int *,int *,scalar_t__) ;
 int mtx_assert (int *,int ) ;
 int pkt_q ;
 int vSR ;

__attribute__((used)) static void
cuda_send_outbound(struct cuda_softc *sc)
{
 struct cuda_packet *pkt;

 mtx_assert(&sc->sc_mutex, MA_OWNED);

 pkt = STAILQ_FIRST(&sc->sc_outq);
 if (pkt == ((void*)0))
  return;

 sc->sc_out_length = pkt->len + 1;
 memcpy(sc->sc_out, &pkt->type, pkt->len + 1);
 sc->sc_sent = 0;

 STAILQ_REMOVE_HEAD(&sc->sc_outq, pkt_q);
 STAILQ_INSERT_TAIL(&sc->sc_freeq, pkt, pkt_q);

 sc->sc_waiting = 1;

 cuda_poll(sc->sc_dev);

 DELAY(150);

 if (sc->sc_state == CUDA_IDLE && !cuda_intr_state(sc)) {
  sc->sc_state = CUDA_OUT;
  cuda_out(sc);
  cuda_write_reg(sc, vSR, sc->sc_out[0]);
  cuda_ack_off(sc);
  cuda_tip(sc);
 }
}
