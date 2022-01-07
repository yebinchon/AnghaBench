
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int * vtscsi_sglist; int vtscsi_flags; } ;
typedef int device_t ;


 int VTSCSI_FLAG_DETACH ;
 int VTSCSI_LOCK (struct vtscsi_softc*) ;
 int VTSCSI_LOCK_DESTROY (struct vtscsi_softc*) ;
 int VTSCSI_UNLOCK (struct vtscsi_softc*) ;
 struct vtscsi_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int sglist_free (int *) ;
 int vtscsi_complete_vqs (struct vtscsi_softc*) ;
 int vtscsi_drain_vqs (struct vtscsi_softc*) ;
 int vtscsi_free_cam (struct vtscsi_softc*) ;
 int vtscsi_free_requests (struct vtscsi_softc*) ;
 int vtscsi_stop (struct vtscsi_softc*) ;

__attribute__((used)) static int
vtscsi_detach(device_t dev)
{
 struct vtscsi_softc *sc;

 sc = device_get_softc(dev);

 VTSCSI_LOCK(sc);
 sc->vtscsi_flags |= VTSCSI_FLAG_DETACH;
 if (device_is_attached(dev))
  vtscsi_stop(sc);
 VTSCSI_UNLOCK(sc);

 vtscsi_complete_vqs(sc);
 vtscsi_drain_vqs(sc);

 vtscsi_free_cam(sc);
 vtscsi_free_requests(sc);

 if (sc->vtscsi_sglist != ((void*)0)) {
  sglist_free(sc->vtscsi_sglist);
  sc->vtscsi_sglist = ((void*)0);
 }

 VTSCSI_LOCK_DESTROY(sc);

 return (0);
}
