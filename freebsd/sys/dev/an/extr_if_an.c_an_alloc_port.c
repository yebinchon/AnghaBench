
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct an_softc {int port_rid; struct resource* port_res; } ;
typedef int device_t ;


 int ENOENT ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 struct resource* bus_alloc_resource_anywhere (int ,int ,int*,int,int ) ;
 struct an_softc* device_get_softc (int ) ;

int
an_alloc_port(device_t dev, int rid, int size)
{
 struct an_softc *sc = device_get_softc(dev);
 struct resource *res;

 res = bus_alloc_resource_anywhere(dev, SYS_RES_IOPORT, &rid,
       size, RF_ACTIVE);
 if (res) {
  sc->port_rid = rid;
  sc->port_res = res;
  return (0);
 } else {
  return (ENOENT);
 }
}
