
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct resource {int dummy; } ;
struct ciu_softc {int irq_rman; } ;
typedef int rman_res_t ;
typedef int device_t ;



 struct resource* bus_alloc_resource (int ,int,int*,int ,int ,int ,int ) ;
 int device_get_parent (int ) ;
 struct ciu_softc* device_get_softc (int ) ;
 struct resource* rman_reserve_resource (int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static struct resource *
ciu_alloc_resource(device_t bus, device_t child, int type, int *rid,
     rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
 struct resource *res;
 struct ciu_softc *sc;

 sc = device_get_softc(bus);

 switch (type) {
 case 128:
  break;
 default:
  return (bus_alloc_resource(device_get_parent(bus), type, rid,
        start, end, count, flags));
 }




 if (start != end)
  return (((void*)0));

 res = rman_reserve_resource(&sc->irq_rman, start, end, count, flags,
        child);
 if (res != ((void*)0))
  return (res);

 return (((void*)0));
}
