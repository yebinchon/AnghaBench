
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ inputbytes; } ;
struct psm_softc {scalar_t__ pqueue_start; scalar_t__ pqueue_end; TYPE_3__ idlepacket; TYPE_1__* pqueue; } ;
struct TYPE_4__ {int * ipacket; } ;
typedef TYPE_1__ packetbuf_t ;


 int LOG_DEBUG ;
 scalar_t__ PSM_PACKETQUEUE ;
 int VLOG (int,int ) ;
 int memcpy (TYPE_1__*,TYPE_3__*,int) ;
 int psmsoftintr (void*) ;

__attribute__((used)) static void
psmsoftintridle(void *arg)
{
 struct psm_softc *sc = arg;
 packetbuf_t *pb;



 if (sc->pqueue_start == sc->pqueue_end &&
     sc->idlepacket.inputbytes > 0) {

  if (--sc->pqueue_start < 0)
   sc->pqueue_start = PSM_PACKETQUEUE - 1;

  pb = &sc->pqueue[sc->pqueue_start];
  memcpy(pb, &sc->idlepacket, sizeof(packetbuf_t));
  VLOG(4, (LOG_DEBUG,
      "psmsoftintridle: %02x %02x %02x %02x %02x %02x\n",
      pb->ipacket[0], pb->ipacket[1], pb->ipacket[2],
      pb->ipacket[3], pb->ipacket[4], pb->ipacket[5]));

  psmsoftintr(arg);
 }
}
