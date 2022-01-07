
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct chipc_softc {int dummy; } ;
typedef int device_t ;


 int bus_generic_activate_resource (int ,int ,int,int,struct resource*) ;
 struct rman* chipc_get_rman (struct chipc_softc*,int) ;
 int chipc_try_activate_resource (struct chipc_softc*,int ,int,int,struct resource*,int) ;
 struct chipc_softc* device_get_softc (int ) ;
 int rman_is_region_manager (struct resource*,struct rman*) ;

__attribute__((used)) static int
chipc_activate_resource(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
 struct chipc_softc *sc;
 struct rman *rm;

 sc = device_get_softc(dev);


 rm = chipc_get_rman(sc, type);
 if (rm == ((void*)0) || !rman_is_region_manager(r, rm)) {
  return (bus_generic_activate_resource(dev, child, type, rid,
      r));
 }


 return (chipc_try_activate_resource(sc, child, type, rid, r, 1));
}
