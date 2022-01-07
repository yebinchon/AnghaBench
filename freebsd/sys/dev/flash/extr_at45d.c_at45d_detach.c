
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at45d_softc {scalar_t__ taskstate; int dummybuf; int bio_queue; scalar_t__ disk; int dev; int sc_mtx; } ;
typedef int device_t ;


 int AT45D_LOCK (struct at45d_softc*) ;
 int AT45D_LOCK_DESTROY (struct at45d_softc*) ;
 int AT45D_UNLOCK (struct at45d_softc*) ;
 int ENXIO ;
 int M_DEVBUF ;
 scalar_t__ TSTATE_RUNNING ;
 scalar_t__ TSTATE_STOPPED ;
 scalar_t__ TSTATE_STOPPING ;
 int bioq_flush (int *,int *,int ) ;
 struct at45d_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int disk_destroy (scalar_t__) ;
 int free (int ,int ) ;
 int hz ;
 int msleep (struct at45d_softc*,int *,int ,char*,int) ;
 int wakeup (struct at45d_softc*) ;

__attribute__((used)) static int
at45d_detach(device_t dev)
{
 struct at45d_softc *sc;
 int err;

 sc = device_get_softc(dev);
 err = 0;

 AT45D_LOCK(sc);
 if (sc->taskstate == TSTATE_RUNNING) {
  sc->taskstate = TSTATE_STOPPING;
  wakeup(sc);
  while (err == 0 && sc->taskstate != TSTATE_STOPPED) {
   err = msleep(sc, &sc->sc_mtx, 0, "at45dt", hz * 3);
   if (err != 0) {
    sc->taskstate = TSTATE_RUNNING;
    device_printf(sc->dev,
        "Failed to stop queue task\n");
   }
  }
 }
 AT45D_UNLOCK(sc);

 if (err == 0 && sc->taskstate == TSTATE_STOPPED) {
  if (sc->disk) {
   disk_destroy(sc->disk);
   bioq_flush(&sc->bio_queue, ((void*)0), ENXIO);
   free(sc->dummybuf, M_DEVBUF);
  }
  AT45D_LOCK_DESTROY(sc);
 }
 return (err);
}
