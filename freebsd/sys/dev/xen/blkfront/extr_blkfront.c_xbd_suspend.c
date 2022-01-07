
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {int xbd_state; int xbd_io_lock; int * xbd_cm_q; } ;
typedef int device_t ;


 int EBUSY ;
 scalar_t__ EWOULDBLOCK ;
 int PRIBIO ;
 size_t XBD_Q_BUSY ;
 int XBD_STATE_SUSPENDED ;
 struct xbd_softc* device_get_softc (int ) ;
 int hz ;
 scalar_t__ msleep (int *,int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ xbd_queue_length (struct xbd_softc*,size_t) ;

__attribute__((used)) static int
xbd_suspend(device_t dev)
{
 struct xbd_softc *sc = device_get_softc(dev);
 int retval;
 int saved_state;


 mtx_lock(&sc->xbd_io_lock);
 saved_state = sc->xbd_state;
 sc->xbd_state = XBD_STATE_SUSPENDED;


 retval = 0;
 while (xbd_queue_length(sc, XBD_Q_BUSY) != 0) {
  if (msleep(&sc->xbd_cm_q[XBD_Q_BUSY], &sc->xbd_io_lock,
      PRIBIO, "blkf_susp", 30 * hz) == EWOULDBLOCK) {
   retval = EBUSY;
   break;
  }
 }
 mtx_unlock(&sc->xbd_io_lock);

 if (retval != 0)
  sc->xbd_state = saved_state;

 return (retval);
}
