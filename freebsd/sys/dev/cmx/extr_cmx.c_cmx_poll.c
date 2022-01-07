
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct thread {int dummy; } ;
struct cmx_softc {int polling; int dev; int ch; int sel; scalar_t__ dying; } ;
struct cdev {struct cmx_softc* si_drv1; } ;


 int BSRBITS ;
 int BSR_BULK_IN_FULL ;
 int CMX_LOCK (struct cmx_softc*) ;
 int CMX_UNLOCK (struct cmx_softc*) ;
 int DEBUG_printf (int ,char*,...) ;
 int ENXIO ;
 int POLLBITS ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int POLL_TICKS ;
 int callout_reset (int *,int ,int ,struct cmx_softc*) ;
 int cmx_read_BSR (struct cmx_softc*) ;
 scalar_t__ cmx_test (int ,int ,int) ;
 int cmx_tick ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
cmx_poll(struct cdev *cdev, int events, struct thread *td)
{
 struct cmx_softc *sc = cdev->si_drv1;
 int revents = 0;
 uint8_t bsr = 0;

 if (sc == ((void*)0) || sc->dying)
  return ENXIO;

 bsr = cmx_read_BSR(sc);
 DEBUG_printf(sc->dev, "called (events=%b BSR=%b)\n",
   events, POLLBITS, bsr, BSRBITS);

 revents = events & (POLLOUT | POLLWRNORM);
 if (events & (POLLIN | POLLRDNORM)) {
  if (cmx_test(bsr, BSR_BULK_IN_FULL, 1)) {
   revents |= events & (POLLIN | POLLRDNORM);
  } else {
   selrecord(td, &sc->sel);
   CMX_LOCK(sc);
   if (!sc->polling) {
    DEBUG_printf(sc->dev, "enabling polling\n");
    sc->polling = 1;
    callout_reset(&sc->ch, POLL_TICKS,
      cmx_tick, sc);
   } else {
    DEBUG_printf(sc->dev, "already polling\n");
   }
   CMX_UNLOCK(sc);
  }
 }

 DEBUG_printf(sc->dev, "success (revents=%b)\n", revents, POLLBITS);

 return revents;
}
