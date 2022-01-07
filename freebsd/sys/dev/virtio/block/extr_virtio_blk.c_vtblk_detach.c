
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int * vtblk_sglist; int * vtblk_disk; int vtblk_flags; } ;
typedef int device_t ;


 int VTBLK_FLAG_DETACH ;
 int VTBLK_LOCK (struct vtblk_softc*) ;
 int VTBLK_LOCK_DESTROY (struct vtblk_softc*) ;
 int VTBLK_UNLOCK (struct vtblk_softc*) ;
 struct vtblk_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int disk_destroy (int *) ;
 int sglist_free (int *) ;
 int vtblk_drain (struct vtblk_softc*) ;
 int vtblk_stop (struct vtblk_softc*) ;

__attribute__((used)) static int
vtblk_detach(device_t dev)
{
 struct vtblk_softc *sc;

 sc = device_get_softc(dev);

 VTBLK_LOCK(sc);
 sc->vtblk_flags |= VTBLK_FLAG_DETACH;
 if (device_is_attached(dev))
  vtblk_stop(sc);
 VTBLK_UNLOCK(sc);

 vtblk_drain(sc);

 if (sc->vtblk_disk != ((void*)0)) {
  disk_destroy(sc->vtblk_disk);
  sc->vtblk_disk = ((void*)0);
 }

 if (sc->vtblk_sglist != ((void*)0)) {
  sglist_free(sc->vtblk_sglist);
  sc->vtblk_sglist = ((void*)0);
 }

 VTBLK_LOCK_DESTROY(sc);

 return (0);
}
