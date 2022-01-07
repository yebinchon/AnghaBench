
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cuda_softc {int sc_state; int sc_waiting; size_t sc_sent; int* sc_out; int sc_received; size_t sc_out_length; int sc_mutex; int sc_inq; int sc_freeq; void** sc_in; } ;
struct cuda_packet {int len; int data; void* type; } ;
typedef scalar_t__ device_t ;






 int DELAY (int) ;
 struct cuda_packet* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct cuda_packet*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int cuda_ack_off (struct cuda_softc*) ;
 int cuda_idle (struct cuda_softc*) ;
 int cuda_in (struct cuda_softc*) ;
 int cuda_intr_state (struct cuda_softc*) ;
 int cuda_out (struct cuda_softc*) ;
 void* cuda_read_reg (struct cuda_softc*,int ) ;
 int cuda_send_inbound (struct cuda_softc*) ;
 int cuda_send_outbound (struct cuda_softc*) ;
 int cuda_tip (struct cuda_softc*) ;
 int cuda_toggle_ack (struct cuda_softc*) ;
 int cuda_write_reg (struct cuda_softc*,int ,int) ;
 struct cuda_softc* device_get_softc (scalar_t__) ;
 int device_printf (scalar_t__,char*) ;
 int memcpy (int ,void**,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pkt_q ;
 int vIFR ;
 int vSR ;
 int vSR_INT ;

__attribute__((used)) static void
cuda_intr(void *arg)
{
 device_t dev;
 struct cuda_softc *sc;

 int i, ending, restart_send, process_inbound;
 uint8_t reg;

        dev = (device_t)arg;
 sc = device_get_softc(dev);

 mtx_lock(&sc->sc_mutex);

 restart_send = 0;
 process_inbound = 0;
 reg = cuda_read_reg(sc, vIFR);
 if ((reg & vSR_INT) != vSR_INT) {
  mtx_unlock(&sc->sc_mutex);
  return;
 }

 cuda_write_reg(sc, vIFR, 0x7f);

switch_start:
 switch (sc->sc_state) {
 case 131:





  sc->sc_in[1] = cuda_read_reg(sc, vSR);

  if (cuda_intr_state(sc) == 0) {


   if (sc->sc_waiting) {

    DELAY(150);
    sc->sc_state = 128;
    sc->sc_sent = 0;
    cuda_out(sc);
    cuda_write_reg(sc, vSR, sc->sc_out[1]);
    cuda_ack_off(sc);
    cuda_tip(sc);
   }
   break;
  }

  cuda_in(sc);
  cuda_tip(sc);

  sc->sc_received = 1;
  sc->sc_state = 130;
  break;

 case 130:
  sc->sc_in[sc->sc_received] = cuda_read_reg(sc, vSR);
  ending = 0;

  if (sc->sc_received > 255) {

   if (sc->sc_received == 256) {
    device_printf(dev,"input overflow\n");
    ending = 1;
   }
  } else
   sc->sc_received++;


  if (cuda_intr_state(sc) == 0) {
   ending = 1;
  } else {
   cuda_toggle_ack(sc);
  }

  if (ending == 1) {
   struct cuda_packet *pkt;


   cuda_idle(sc);


   pkt = STAILQ_FIRST(&sc->sc_freeq);
   if (pkt != ((void*)0)) {


    pkt->len = sc->sc_received - 2;
    pkt->type = sc->sc_in[1];
    memcpy(pkt->data, &sc->sc_in[2], pkt->len);

    STAILQ_REMOVE_HEAD(&sc->sc_freeq, pkt_q);
    STAILQ_INSERT_TAIL(&sc->sc_inq, pkt, pkt_q);

    process_inbound = 1;
   }

   sc->sc_state = 131;
   sc->sc_received = 0;





   if (sc->sc_waiting == 1) {
    DELAY(1500);
    sc->sc_sent = 0;
    sc->sc_state = 128;







    if (cuda_intr_state(sc)) {
     cuda_in(sc);
     cuda_idle(sc);
     sc->sc_sent = 0;
     sc->sc_state = 131;
     sc->sc_received = 0;
     DELAY(150);
     goto switch_start;
    }






    cuda_out(sc);
    cuda_write_reg(sc, vSR,
        sc->sc_out[sc->sc_sent]);
    cuda_ack_off(sc);
    cuda_tip(sc);
   }
  }
  break;

 case 128:
  i = cuda_read_reg(sc, vSR);

  sc->sc_sent++;
  if (cuda_intr_state(sc)) {
   cuda_in(sc);
   cuda_idle(sc);
   sc->sc_sent = 0;
   sc->sc_state = 131;
   sc->sc_received = 0;
   sc->sc_waiting = 1;

   DELAY(150);
   goto switch_start;

   break;
  }
  if (sc->sc_out_length == sc->sc_sent) {
   sc->sc_waiting = 0;
   sc->sc_state = 131;
   cuda_in(sc);
   cuda_idle(sc);
  } else {

   cuda_write_reg(sc, vSR, sc->sc_out[sc->sc_sent]);
   cuda_toggle_ack(sc);

  }
  break;

 case 129:
  break;

 default:
  break;
 }

 mtx_unlock(&sc->sc_mutex);

 if (process_inbound)
  cuda_send_inbound(sc);

 mtx_lock(&sc->sc_mutex);

 if (!sc->sc_waiting && sc->sc_state == 131)
  cuda_send_outbound(sc);

 mtx_unlock(&sc->sc_mutex);

}
