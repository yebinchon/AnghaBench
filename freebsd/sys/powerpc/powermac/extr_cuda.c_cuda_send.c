
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cuda_softc {scalar_t__ sc_state; scalar_t__ sc_polling; int sc_mutex; scalar_t__ sc_waiting; int sc_outq; int sc_freeq; int sc_dev; } ;
struct cuda_packet {int len; int data; int type; } ;
typedef int device_t ;


 scalar_t__ CUDA_NOTREADY ;
 struct cuda_packet* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct cuda_packet*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 scalar_t__ cold ;
 int cuda_poll (int ) ;
 int cuda_send_outbound (struct cuda_softc*) ;
 int memcpy (int ,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pkt_q ;

__attribute__((used)) static int
cuda_send(void *cookie, int poll, int length, uint8_t *msg)
{
 struct cuda_softc *sc = cookie;
 device_t dev = sc->sc_dev;
 struct cuda_packet *pkt;

 if (sc->sc_state == CUDA_NOTREADY)
  return (-1);

 mtx_lock(&sc->sc_mutex);

 pkt = STAILQ_FIRST(&sc->sc_freeq);
 if (pkt == ((void*)0)) {
  mtx_unlock(&sc->sc_mutex);
  return (-1);
 }

 pkt->len = length - 1;
 pkt->type = msg[0];
 memcpy(pkt->data, &msg[1], pkt->len);

 STAILQ_REMOVE_HEAD(&sc->sc_freeq, pkt_q);
 STAILQ_INSERT_TAIL(&sc->sc_outq, pkt, pkt_q);






 if (sc->sc_waiting) {
  mtx_unlock(&sc->sc_mutex);
  return (0);
 }

 cuda_send_outbound(sc);
 mtx_unlock(&sc->sc_mutex);

 if (sc->sc_polling || poll || cold)
  cuda_poll(dev);

 return (0);
}
