
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuda_softc {int sc_autopoll; int sc_mutex; int sc_freeq; int sc_rtc; int adb_bus; int sc_inq; int sc_dev; } ;
struct cuda_packet {int type; int len; int * data; } ;
typedef int device_t ;
 struct cuda_packet* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct cuda_packet*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int adb_receive_raw_packet (int ,int ,int ,int ,int *) ;
 int device_printf (int ,char*,int) ;
 int memcpy (int *,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pkt_q ;
 int wakeup (int *) ;

__attribute__((used)) static void
cuda_send_inbound(struct cuda_softc *sc)
{
 device_t dev;
 struct cuda_packet *pkt;

 dev = sc->sc_dev;

 mtx_lock(&sc->sc_mutex);

 while ((pkt = STAILQ_FIRST(&sc->sc_inq)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&sc->sc_inq, pkt_q);

  mtx_unlock(&sc->sc_mutex);


  switch (pkt->type) {
     case 130:
   if (pkt->len > 2) {
    adb_receive_raw_packet(sc->adb_bus,
        pkt->data[0],pkt->data[1],
        pkt->len - 2,&pkt->data[2]);
   } else {
    adb_receive_raw_packet(sc->adb_bus,
        pkt->data[0],pkt->data[1],0,((void*)0));
   }
   break;
     case 128:
   mtx_lock(&sc->sc_mutex);
   switch (pkt->data[1]) {
   case 133:
    sc->sc_autopoll = 1;
    break;
   case 132:
    memcpy(&sc->sc_rtc, &pkt->data[2],
        sizeof(sc->sc_rtc));
    wakeup(&sc->sc_rtc);
    break;
   case 131:
    break;
   }
   mtx_unlock(&sc->sc_mutex);
   break;
     case 129:







   break;
     default:
   device_printf(dev,"unknown CUDA command %d\n",
       pkt->type);
   break;
  }

  mtx_lock(&sc->sc_mutex);

  STAILQ_INSERT_TAIL(&sc->sc_freeq, pkt, pkt_q);
 }

 mtx_unlock(&sc->sc_mutex);
}
