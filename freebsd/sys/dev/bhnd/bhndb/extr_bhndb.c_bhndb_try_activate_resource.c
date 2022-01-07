
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
struct bhndb_softc {TYPE_2__* bus_res; int dev; } ;
struct bhndb_region {scalar_t__ priority; scalar_t__ static_regwin; } ;
struct bhndb_dw_alloc {TYPE_1__* win; struct resource* parent_res; scalar_t__ target; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;
typedef scalar_t__ bhndb_priority_t ;
struct TYPE_5__ {scalar_t__ min_prio; int res; } ;
struct TYPE_4__ {scalar_t__ win_size; scalar_t__ win_offset; } ;


 scalar_t__ BHNDB_ADDRSPACE_NATIVE ;
 int BHNDB_LOCK (struct bhndb_softc*) ;
 int BHNDB_LOCK_ASSERT (struct bhndb_softc*,int ) ;
 scalar_t__ BHNDB_PRIORITY_LOW ;
 int BHNDB_UNLOCK (struct bhndb_softc*) ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int KASSERT (int,char*) ;
 int MA_NOTOWNED ;


 int bhndb_activate_static_region (struct bhndb_softc*,struct bhndb_region*,int ,int,int,struct resource*) ;
 int bhndb_dw_release (TYPE_2__*,struct bhndb_dw_alloc*,struct resource*) ;
 struct bhndb_region* bhndb_find_resource_region (TYPE_2__*,scalar_t__,scalar_t__) ;
 scalar_t__ bhndb_get_addrspace (struct bhndb_softc*,int ) ;
 struct resource* bhndb_host_resource_for_range (int ,int,scalar_t__,scalar_t__) ;
 int bhndb_init_child_resource (struct resource*,struct resource*,scalar_t__,scalar_t__) ;
 struct bhndb_dw_alloc* bhndb_retain_dynamic_window (struct bhndb_softc*,struct resource*) ;
 int device_printf (int ,char*,unsigned long long,...) ;
 int rman_activate_resource (struct resource*) ;
 scalar_t__ rman_get_size (struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;

__attribute__((used)) static int
bhndb_try_activate_resource(struct bhndb_softc *sc, device_t child, int type,
    int rid, struct resource *r, bool *indirect)
{
 struct bhndb_region *region;
 struct bhndb_dw_alloc *dwa;
 bhndb_priority_t dw_priority;
 rman_res_t r_start, r_size;
 rman_res_t parent_offset;
 int error;

 BHNDB_LOCK_ASSERT(sc, MA_NOTOWNED);

 if (indirect != ((void*)0))
  *indirect = 0;

 switch (type) {
 case 129:

  return (rman_activate_resource(r));

 case 128:

  break;

 default:
  device_printf(sc->dev, "unsupported resource type %d\n", type);
  return (ENXIO);
 }


 KASSERT(type == 128, ("invalid type: %d", type));

 r_start = rman_get_start(r);
 r_size = rman_get_size(r);


 if (bhndb_get_addrspace(sc, child) == BHNDB_ADDRSPACE_NATIVE) {
  struct resource *parent;


  parent = bhndb_host_resource_for_range(sc->bus_res->res,
      type, r_start, r_size);
  if (parent == ((void*)0)) {
   device_printf(sc->dev, "host resource not found "
        "for 0x%llx-0x%llx\n",
        (unsigned long long) r_start,
        (unsigned long long) r_start + r_size - 1);
   return (ENOENT);
  }


  error = bhndb_init_child_resource(r, parent,
      r_start - rman_get_start(parent), r_size);
  if (error)
   return (error);


  return (rman_activate_resource(r));
 }


 dw_priority = BHNDB_PRIORITY_LOW;


 region = bhndb_find_resource_region(sc->bus_res, r_start, r_size);
 if (region != ((void*)0))
  dw_priority = region->priority;


 if (region && region->static_regwin) {
  error = bhndb_activate_static_region(sc, region, child, type,
      rid, r);
  if (error)
   device_printf(sc->dev, "static window allocation "
        "for 0x%llx-0x%llx failed\n",
        (unsigned long long) r_start,
        (unsigned long long) r_start + r_size - 1);
  return (error);
 }



 if (dw_priority < sc->bus_res->min_prio) {
  if (indirect)
   *indirect = 1;

  return (ENOMEM);
 }


 BHNDB_LOCK(sc); {
  dwa = bhndb_retain_dynamic_window(sc, r);
 } BHNDB_UNLOCK(sc);

 if (dwa == ((void*)0)) {
  if (indirect)
   *indirect = 1;
  return (ENOMEM);
 }


 parent_offset = dwa->win->win_offset;
 parent_offset += r_start - dwa->target;

 error = bhndb_init_child_resource(r, dwa->parent_res, parent_offset,
     dwa->win->win_size);
 if (error)
  goto failed;


 if ((error = rman_activate_resource(r)))
  goto failed;

 return (0);

failed:

 BHNDB_LOCK(sc);
 bhndb_dw_release(sc->bus_res, dwa, r);
 BHNDB_UNLOCK(sc);

 return (error);
}
