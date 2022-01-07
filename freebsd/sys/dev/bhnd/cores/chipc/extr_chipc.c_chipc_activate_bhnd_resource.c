
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int dummy; } ;
struct chipc_softc {int dummy; } ;
struct bhnd_resource {int direct; int res; } ;
typedef int device_t ;


 int RF_ACTIVE ;
 int bhnd_bus_generic_activate_resource (int ,int ,int,int,struct bhnd_resource*) ;
 struct rman* chipc_get_rman (struct chipc_softc*,int) ;
 int chipc_try_activate_resource (struct chipc_softc*,int ,int,int,int ,int) ;
 struct chipc_softc* device_get_softc (int ) ;
 int rman_get_flags (int ) ;
 int rman_is_region_manager (int ,struct rman*) ;

__attribute__((used)) static int
chipc_activate_bhnd_resource(device_t dev, device_t child, int type,
    int rid, struct bhnd_resource *r)
{
 struct chipc_softc *sc;
 struct rman *rm;
 int error;

 sc = device_get_softc(dev);


 rm = chipc_get_rman(sc, type);
 if (rm == ((void*)0) || !rman_is_region_manager(r->res, rm)) {
  return (bhnd_bus_generic_activate_resource(dev, child, type,
      rid, r));
 }


 error = chipc_try_activate_resource(sc, child, type, rid, r->res,
     0);
 if (error)
  return (error);



 if (rman_get_flags(r->res) & RF_ACTIVE)
  r->direct = 1;

 return (0);
}
