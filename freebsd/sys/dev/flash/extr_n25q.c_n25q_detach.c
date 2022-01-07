
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n25q_softc {scalar_t__ sc_taskstate; int sc_bio_queue; int sc_disk; int dev; int sc_mtx; } ;
typedef int device_t ;


 int ENXIO ;
 int N25Q_LOCK (struct n25q_softc*) ;
 int N25Q_LOCK_DESTROY (struct n25q_softc*) ;
 int N25Q_UNLOCK (struct n25q_softc*) ;
 scalar_t__ TSTATE_RUNNING ;
 scalar_t__ TSTATE_STOPPED ;
 scalar_t__ TSTATE_STOPPING ;
 int bioq_flush (int *,int *,int ) ;
 struct n25q_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int disk_destroy (int ) ;
 int hz ;
 int msleep (struct n25q_softc*,int *,int ,char*,int) ;
 int wakeup (struct n25q_softc*) ;

__attribute__((used)) static int
n25q_detach(device_t dev)
{
 struct n25q_softc *sc;
 int err;

 sc = device_get_softc(dev);
 err = 0;

 N25Q_LOCK(sc);
 if (sc->sc_taskstate == TSTATE_RUNNING) {
  sc->sc_taskstate = TSTATE_STOPPING;
  wakeup(sc);
  while (err == 0 && sc->sc_taskstate != TSTATE_STOPPED) {
   err = msleep(sc, &sc->sc_mtx, 0, "n25q", hz * 3);
   if (err != 0) {
    sc->sc_taskstate = TSTATE_RUNNING;
    device_printf(sc->dev,
        "Failed to stop queue task\n");
   }
  }
 }
 N25Q_UNLOCK(sc);

 if (err == 0 && sc->sc_taskstate == TSTATE_STOPPED) {
  disk_destroy(sc->sc_disk);
  bioq_flush(&sc->sc_bio_queue, ((void*)0), ENXIO);
  N25Q_LOCK_DESTROY(sc);
 }
 return (err);
}
