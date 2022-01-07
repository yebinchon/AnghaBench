
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cmx_softc {int dev; scalar_t__ open; int sel; int ch; scalar_t__ polling; scalar_t__ dying; } ;
struct cdev {struct cmx_softc* si_drv1; } ;


 int CMX_LOCK (struct cmx_softc*) ;
 int CMX_UNLOCK (struct cmx_softc*) ;
 int DEBUG_printf (int ,char*,...) ;
 int EINVAL ;
 int ENXIO ;
 int MODEBITS ;
 int PZERO ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int selwakeuppri (int *,int ) ;

__attribute__((used)) static int
cmx_close(struct cdev *cdev, int flags, int fmt, struct thread *td)
{
 struct cmx_softc *sc = cdev->si_drv1;

 if (sc == ((void*)0) || sc->dying)
  return ENXIO;

 CMX_LOCK(sc);
 if (!sc->open) {
  CMX_UNLOCK(sc);
  return EINVAL;
 }
 if (sc->polling) {
  DEBUG_printf(sc->dev, "disabling polling\n");
  callout_stop(&sc->ch);
  sc->polling = 0;
  CMX_UNLOCK(sc);
  callout_drain(&sc->ch);
  selwakeuppri(&sc->sel, PZERO);
  CMX_LOCK(sc);
 }
 sc->open = 0;
 CMX_UNLOCK(sc);

 DEBUG_printf(sc->dev, "close (flags=%b thread=%p)\n",
   flags, MODEBITS, td);
 return 0;
}
