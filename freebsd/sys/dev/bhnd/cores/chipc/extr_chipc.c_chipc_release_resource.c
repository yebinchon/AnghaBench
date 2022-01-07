
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int dummy; } ;
struct resource_list_entry {int * res; } ;
struct resource {int dummy; } ;
struct chipc_softc {int dummy; } ;
struct chipc_region {int dummy; } ;
typedef int device_t ;


 int BUS_DEACTIVATE_RESOURCE (int ,int ,int,int,struct resource*) ;
 int BUS_GET_RESOURCE_LIST (int ,int ) ;
 int EINVAL ;
 int RF_ACTIVE ;
 int RF_ALLOCATED ;
 int bus_generic_rl_release_resource (int ,int ,int,int,struct resource*) ;
 struct chipc_region* chipc_find_region (struct chipc_softc*,int ,int ) ;
 struct rman* chipc_get_rman (struct chipc_softc*,int) ;
 int chipc_release_region (struct chipc_softc*,struct chipc_region*,int ) ;
 struct chipc_softc* device_get_softc (int ) ;
 struct resource_list_entry* resource_list_find (int ,int,int) ;
 int rman_get_end (struct resource*) ;
 int rman_get_flags (struct resource*) ;
 int rman_get_start (struct resource*) ;
 int rman_is_region_manager (struct resource*,struct rman*) ;
 int rman_release_resource (struct resource*) ;

__attribute__((used)) static int
chipc_release_resource(device_t dev, device_t child, int type, int rid,
    struct resource *r)
{
 struct chipc_softc *sc;
 struct chipc_region *cr;
 struct rman *rm;
 struct resource_list_entry *rle;
 int error;

 sc = device_get_softc(dev);


 rm = chipc_get_rman(sc, type);
 if (rm == ((void*)0) || !rman_is_region_manager(r, rm)) {
  return (bus_generic_rl_release_resource(dev, child, type, rid,
      r));
 }


 cr = chipc_find_region(sc, rman_get_start(r), rman_get_end(r));
 if (cr == ((void*)0))
  return (EINVAL);


 if (rman_get_flags(r) & RF_ACTIVE) {
  error = BUS_DEACTIVATE_RESOURCE(dev, child, type, rid, r);
  if (error)
   return (error);
 }

 if ((error = rman_release_resource(r)))
  return (error);


 chipc_release_region(sc, cr, RF_ALLOCATED);


 rle = resource_list_find(BUS_GET_RESOURCE_LIST(dev, child), type, rid);
 if (rle != ((void*)0))
  rle->res = ((void*)0);

 return (0);
}
