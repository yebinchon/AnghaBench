
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct cyapa_softc {int detaching; int mutex; TYPE_1__ selinfo; int devnode; scalar_t__ poll_thread_running; } ;
typedef int device_t ;


 int PCATCH ;
 int cyapa_lock (struct cyapa_softc*) ;
 int cyapa_unlock (struct cyapa_softc*) ;
 int destroy_dev (int ) ;
 struct cyapa_softc* device_get_softc (int ) ;
 int hz ;
 int knlist_clear (int *,int ) ;
 int knlist_destroy (int *) ;
 int mtx_destroy (int *) ;
 int mtx_sleep (int*,int *,int ,char*,int ) ;
 int seldrain (TYPE_1__*) ;

__attribute__((used)) static int
cyapa_detach(device_t dev)
{
 struct cyapa_softc *sc;

 sc = device_get_softc(dev);


 cyapa_lock(sc);
 while (sc->poll_thread_running) {
  sc->detaching = 1;
  mtx_sleep(&sc->detaching, &sc->mutex, PCATCH, "cyapadet", hz);
 }
 cyapa_unlock(sc);

 destroy_dev(sc->devnode);

 knlist_clear(&sc->selinfo.si_note, 0);
 seldrain(&sc->selinfo);
 knlist_destroy(&sc->selinfo.si_note);

 mtx_destroy(&sc->mutex);

 return (0);
}
