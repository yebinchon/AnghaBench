
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atse_softc {int * atse_mem_res; int atse_mem_rid; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct atse_softc* device_get_softc (int ) ;

void
atse_detach_resources(device_t dev)
{
 struct atse_softc *sc;

 sc = device_get_softc(dev);

 if (sc->atse_mem_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY, sc->atse_mem_rid,
      sc->atse_mem_res);
  sc->atse_mem_res = ((void*)0);
 }
}
