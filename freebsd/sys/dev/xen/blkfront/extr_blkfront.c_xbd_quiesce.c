
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {int xbd_ring; } ;


 int HYPERVISOR_yield () ;
 int RING_FINAL_CHECK_FOR_RESPONSES (int *,int) ;
 int XBD_Q_BUSY ;
 int xbd_int (struct xbd_softc*) ;
 scalar_t__ xbd_queue_length (struct xbd_softc*,int ) ;

__attribute__((used)) static void
xbd_quiesce(struct xbd_softc *sc)
{
 int mtd;


 while (xbd_queue_length(sc, XBD_Q_BUSY) != 0) {
  RING_FINAL_CHECK_FOR_RESPONSES(&sc->xbd_ring, mtd);
  if (mtd) {

   xbd_int(sc);
  }
  if (xbd_queue_length(sc, XBD_Q_BUSY) != 0) {




   HYPERVISOR_yield();
  }
 }
}
