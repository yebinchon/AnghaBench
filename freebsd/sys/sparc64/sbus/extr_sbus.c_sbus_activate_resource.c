
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbus_softc {int sc_nrange; TYPE_1__* sc_rd; } ;
struct resource {int dummy; } ;
struct bus_space_tag {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ rd_bushandle; int rd_rman; } ;


 int EINVAL ;
 int ENOMEM ;
 int SBUS_BUS_SPACE ;


 int bus_generic_activate_resource (int ,int ,int,int,struct resource*) ;
 struct sbus_softc* device_get_softc (int ) ;
 int rman_activate_resource (struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;
 int rman_is_region_manager (struct resource*,int *) ;
 int rman_set_bushandle (struct resource*,scalar_t__) ;
 int rman_set_bustag (struct resource*,struct bus_space_tag*) ;
 struct bus_space_tag* sparc64_alloc_bus_tag (struct resource*,int ) ;

__attribute__((used)) static int
sbus_activate_resource(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
 struct sbus_softc *sc;
 struct bus_space_tag *tag;
 int i;

 switch (type) {
 case 129:
  return (bus_generic_activate_resource(bus, child, type, rid,
      r));
 case 128:
  sc = device_get_softc(bus);
  for (i = 0; i < sc->sc_nrange; i++) {
   if (rman_is_region_manager(r,
       &sc->sc_rd[i].rd_rman) != 0) {
    tag = sparc64_alloc_bus_tag(r, SBUS_BUS_SPACE);
    if (tag == ((void*)0))
     return (ENOMEM);
    rman_set_bustag(r, tag);
    rman_set_bushandle(r,
        sc->sc_rd[i].rd_bushandle +
        rman_get_start(r));
    return (rman_activate_resource(r));
   }
  }

 default:
  return (EINVAL);
 }
}
