
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct chipc_softc {int dummy; } ;
struct chipc_region {scalar_t__ cr_addr; scalar_t__ cr_end; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 int EINVAL ;
 int bus_generic_adjust_resource (int ,int ,int,struct resource*,scalar_t__,scalar_t__) ;
 struct chipc_region* chipc_find_region (struct chipc_softc*,int ,int ) ;
 struct rman* chipc_get_rman (struct chipc_softc*,int) ;
 struct chipc_softc* device_get_softc (int ) ;
 int rman_adjust_resource (struct resource*,scalar_t__,scalar_t__) ;
 int rman_get_end (struct resource*) ;
 int rman_get_start (struct resource*) ;
 int rman_is_region_manager (struct resource*,struct rman*) ;

__attribute__((used)) static int
chipc_adjust_resource(device_t dev, device_t child, int type,
    struct resource *r, rman_res_t start, rman_res_t end)
{
 struct chipc_softc *sc;
 struct chipc_region *cr;
 struct rman *rm;

 sc = device_get_softc(dev);


 rm = chipc_get_rman(sc, type);
 if (rm == ((void*)0) || !rman_is_region_manager(r, rm)) {
  return (bus_generic_adjust_resource(dev, child, type, r, start,
      end));
 }


 cr = chipc_find_region(sc, rman_get_start(r), rman_get_end(r));
 if (cr == ((void*)0))
  return (EINVAL);

 if (end <= start)
  return (EINVAL);

 if (start < cr->cr_addr || end > cr->cr_end)
  return (EINVAL);


 return (rman_adjust_resource(r, start, end));
}
