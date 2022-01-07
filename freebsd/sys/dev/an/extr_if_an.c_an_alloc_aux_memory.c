
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct an_softc {int mem_aux_rid; int mem_aux_used; struct resource* mem_aux_res; } ;
typedef int device_t ;


 int ENOENT ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 struct resource* bus_alloc_resource_anywhere (int ,int ,int*,int,int ) ;
 struct an_softc* device_get_softc (int ) ;

int an_alloc_aux_memory(device_t dev, int rid, int size)
{
 struct an_softc *sc = device_get_softc(dev);
 struct resource *res;

 res = bus_alloc_resource_anywhere(dev, SYS_RES_MEMORY, &rid,
       size, RF_ACTIVE);
 if (res) {
  sc->mem_aux_rid = rid;
  sc->mem_aux_res = res;
  sc->mem_aux_used = size;
  return (0);
 } else {
  return (ENOENT);
 }
}
