
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmx_softc {int dying; int cdev; int sel; int ch; scalar_t__ polling; int dev; } ;
typedef int device_t ;


 int CMX_LOCK (struct cmx_softc*) ;
 int CMX_UNLOCK (struct cmx_softc*) ;
 int DEBUG_printf (int ,char*) ;
 int PZERO ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int cmx_release_resources (int ) ;
 int destroy_dev (int ) ;
 struct cmx_softc* device_get_softc (int ) ;
 int selwakeuppri (int *,int ) ;
 int wakeup (struct cmx_softc*) ;

int
cmx_detach(device_t dev)
{
 struct cmx_softc *sc = device_get_softc(dev);

 DEBUG_printf(dev, "called\n");

 sc->dying = 1;

 CMX_LOCK(sc);
 if (sc->polling) {
  DEBUG_printf(sc->dev, "disabling polling\n");
  callout_stop(&sc->ch);
  sc->polling = 0;
  CMX_UNLOCK(sc);
  callout_drain(&sc->ch);
  selwakeuppri(&sc->sel, PZERO);
 } else {
  CMX_UNLOCK(sc);
 }

 wakeup(sc);
 destroy_dev(sc->cdev);

 DEBUG_printf(dev, "releasing resources\n");
 cmx_release_resources(dev);
 return 0;
}
