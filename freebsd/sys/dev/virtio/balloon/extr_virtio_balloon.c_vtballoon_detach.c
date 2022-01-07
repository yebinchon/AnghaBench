
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtballoon_softc {int * vtballoon_page_frames; int * vtballoon_td; int vtballoon_flags; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int VTBALLOON_FLAG_DETACH ;
 int VTBALLOON_LOCK (struct vtballoon_softc*) ;
 int VTBALLOON_LOCK_DESTROY (struct vtballoon_softc*) ;
 int VTBALLOON_MTX (struct vtballoon_softc*) ;
 int VTBALLOON_UNLOCK (struct vtballoon_softc*) ;
 struct vtballoon_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int free (int *,int ) ;
 int msleep (int *,int ,int ,char*,int ) ;
 int vtballoon_pop (struct vtballoon_softc*) ;
 int vtballoon_stop (struct vtballoon_softc*) ;
 int wakeup_one (struct vtballoon_softc*) ;

__attribute__((used)) static int
vtballoon_detach(device_t dev)
{
 struct vtballoon_softc *sc;

 sc = device_get_softc(dev);

 if (sc->vtballoon_td != ((void*)0)) {
  VTBALLOON_LOCK(sc);
  sc->vtballoon_flags |= VTBALLOON_FLAG_DETACH;
  wakeup_one(sc);
  msleep(sc->vtballoon_td, VTBALLOON_MTX(sc), 0, "vtbdth", 0);
  VTBALLOON_UNLOCK(sc);

  sc->vtballoon_td = ((void*)0);
 }

 if (device_is_attached(dev)) {
  vtballoon_pop(sc);
  vtballoon_stop(sc);
 }

 if (sc->vtballoon_page_frames != ((void*)0)) {
  free(sc->vtballoon_page_frames, M_DEVBUF);
  sc->vtballoon_page_frames = ((void*)0);
 }

 VTBALLOON_LOCK_DESTROY(sc);

 return (0);
}
