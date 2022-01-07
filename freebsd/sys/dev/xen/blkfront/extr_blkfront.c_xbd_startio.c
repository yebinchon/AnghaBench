
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {scalar_t__ xbd_state; scalar_t__ xbd_qfrozen_cnt; int xbd_ring; int xbd_io_lock; } ;
struct xbd_command {int cm_flags; } ;


 int MA_OWNED ;
 int RING_FULL (int *) ;
 int XBDCF_Q_FREEZE ;
 int XBD_Q_READY ;
 scalar_t__ XBD_STATE_CONNECTED ;
 int mtx_assert (int *,int ) ;
 int printf (char*,int) ;
 struct xbd_command* xbd_bio_command (struct xbd_softc*) ;
 int xbd_cm_freeze (struct xbd_softc*,struct xbd_command*,int) ;
 struct xbd_command* xbd_dequeue_cm (struct xbd_softc*,int ) ;
 int xbd_flush_requests (struct xbd_softc*) ;
 int xbd_queue_request (struct xbd_softc*,struct xbd_command*) ;

__attribute__((used)) static void
xbd_startio(struct xbd_softc *sc)
{
 struct xbd_command *cm;
 int error, queued = 0;

 mtx_assert(&sc->xbd_io_lock, MA_OWNED);

 if (sc->xbd_state != XBD_STATE_CONNECTED)
  return;

 while (!RING_FULL(&sc->xbd_ring)) {

  if (sc->xbd_qfrozen_cnt != 0)
   break;

  cm = xbd_dequeue_cm(sc, XBD_Q_READY);

  if (cm == ((void*)0))
      cm = xbd_bio_command(sc);

  if (cm == ((void*)0))
   break;

  if ((cm->cm_flags & XBDCF_Q_FREEZE) != 0) {




   xbd_cm_freeze(sc, cm, XBDCF_Q_FREEZE);
  }

  if ((error = xbd_queue_request(sc, cm)) != 0) {
   printf("xbd_queue_request returned %d\n", error);
   break;
  }
  queued++;
 }

 if (queued != 0)
  xbd_flush_requests(sc);
}
