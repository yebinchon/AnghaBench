
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rm_end; } ;
struct TYPE_3__ {TYPE_2__ rman; } ;
struct vmd_softc {TYPE_1__ vmd_bus; int * vmd_child; } ;
typedef int device_t ;


 int bus_generic_detach (int *) ;
 int device_delete_child (int ,int *) ;
 struct vmd_softc* device_get_softc (int ) ;
 int rman_fini (TYPE_2__*) ;
 int vmd_free (struct vmd_softc*) ;

__attribute__((used)) static int
vmd_detach(device_t dev)
{
 struct vmd_softc *sc;
 int err;

 sc = device_get_softc(dev);
 if (sc->vmd_child != ((void*)0)) {
  err = bus_generic_detach(sc->vmd_child);
  if (err)
   return (err);
  err = device_delete_child(dev, sc->vmd_child);
  if (err)
   return (err);
 }
 if (sc->vmd_bus.rman.rm_end != 0)
  rman_fini(&sc->vmd_bus.rman);

 vmd_free(sc);
 return (0);
}
