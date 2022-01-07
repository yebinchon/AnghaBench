
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cferes_softc {int rnum; int * res; int * rid; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;
 struct cferes_softc* device_get_softc (int ) ;

__attribute__((used)) static int
cferes_detach(device_t dev)
{
 int i;
 struct cferes_softc *sc = device_get_softc(dev);

 for (i = 0; i < sc->rnum; i++) {
  bus_release_resource(dev, SYS_RES_MEMORY, sc->rid[i],
      sc->res[i]);
 }

 return (0);
}
