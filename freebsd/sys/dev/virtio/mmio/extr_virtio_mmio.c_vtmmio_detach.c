
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtmmio_softc {int ** res; int * vtmmio_child_dev; } ;
typedef int * device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int *,int ,int ,int *) ;
 int device_delete_child (int *,int *) ;
 struct vtmmio_softc* device_get_softc (int *) ;
 int vtmmio_reset (struct vtmmio_softc*) ;

__attribute__((used)) static int
vtmmio_detach(device_t dev)
{
 struct vtmmio_softc *sc;
 device_t child;
 int error;

 sc = device_get_softc(dev);

 if ((child = sc->vtmmio_child_dev) != ((void*)0)) {
  error = device_delete_child(dev, child);
  if (error)
   return (error);
  sc->vtmmio_child_dev = ((void*)0);
 }

 vtmmio_reset(sc);

 if (sc->res[0] != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0,
      sc->res[0]);
  sc->res[0] = ((void*)0);
 }

 return (0);
}
