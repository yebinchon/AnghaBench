
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ow_temp_softc {int flags; int temp_lock; int event_thread; } ;
typedef int device_t ;


 int OW_TEMP_DONE ;
 int OW_TEMP_RUNNING ;
 int PWAIT ;
 struct ow_temp_softc* device_get_softc (int ) ;
 int msleep (int ,int *,int ,char*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int wakeup (struct ow_temp_softc*) ;

__attribute__((used)) static int
ow_temp_detach(device_t dev)
{
 struct ow_temp_softc *sc;

 sc = device_get_softc(dev);
 mtx_lock(&sc->temp_lock);
 sc->flags |= OW_TEMP_DONE;
 while (sc->flags & OW_TEMP_RUNNING) {
  wakeup(sc);
  msleep(sc->event_thread, &sc->temp_lock, PWAIT, "owtun", 0);
 }
 mtx_destroy(&sc->temp_lock);

 return 0;
}
