
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int u_long ;
struct resource {int dummy; } ;
struct iobus_softc {scalar_t__ sc_addr; } ;
typedef int device_t ;


 int ENOMEM ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bs_le_tag ;
 int bus_activate_resource (int ,int,int,struct resource*) ;
 struct iobus_softc* device_get_softc (int ) ;
 void* pmap_mapdev (scalar_t__,int ) ;
 int rman_activate_resource (struct resource*) ;
 scalar_t__ rman_get_size (struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;
 int rman_set_bushandle (struct resource*,int ) ;
 int rman_set_bustag (struct resource*,int *) ;
 int rman_set_virtual (struct resource*,void*) ;

__attribute__((used)) static int
iobus_activate_resource(device_t bus, device_t child, int type, int rid,
      struct resource *res)
{
 struct iobus_softc *sc;
 void *p;

 sc = device_get_softc(bus);

 if (type == SYS_RES_IRQ)
                return (bus_activate_resource(bus, type, rid, res));

 if ((type == SYS_RES_MEMORY) || (type == SYS_RES_IOPORT)) {
  p = pmap_mapdev((vm_offset_t)rman_get_start(res) + sc->sc_addr,
    (vm_size_t)rman_get_size(res));
  if (p == ((void*)0))
   return (ENOMEM);
  rman_set_virtual(res, p);
  rman_set_bustag(res, &bs_le_tag);
  rman_set_bushandle(res, (u_long)p);
 }

 return (rman_activate_resource(res));
}
