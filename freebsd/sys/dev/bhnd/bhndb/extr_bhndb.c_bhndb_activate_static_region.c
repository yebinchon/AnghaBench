
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct bhndb_softc {TYPE_1__* bus_res; } ;
struct bhndb_regwin {scalar_t__ win_offset; int win_type; } ;
struct bhndb_region {scalar_t__ addr; struct bhndb_regwin* static_regwin; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;
typedef scalar_t__ bhnd_size_t ;
struct TYPE_2__ {int res; } ;


 scalar_t__ BHNDB_REGWIN_T_IS_STATIC (int ) ;
 int ENXIO ;
 int KASSERT (int,char*) ;
 struct resource* bhndb_host_resource_for_regwin (int ,struct bhndb_regwin const*) ;
 int bhndb_init_child_resource (struct resource*,struct resource*,scalar_t__,scalar_t__) ;
 int rman_activate_resource (struct resource*) ;
 scalar_t__ rman_get_size (struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;

__attribute__((used)) static int
bhndb_activate_static_region(struct bhndb_softc *sc,
    struct bhndb_region *region, device_t child, int type, int rid,
    struct resource *r)
{
 struct resource *bridge_res;
 const struct bhndb_regwin *win;
 bhnd_size_t parent_offset;
 rman_res_t r_start, r_size;
 int error;

 win = region->static_regwin;

 KASSERT(win != ((void*)0) && BHNDB_REGWIN_T_IS_STATIC(win->win_type),
     ("can't activate non-static region"));

 r_start = rman_get_start(r);
 r_size = rman_get_size(r);


 bridge_res = bhndb_host_resource_for_regwin(sc->bus_res->res, win);
 if (bridge_res == ((void*)0))
  return (ENXIO);


 parent_offset = r_start - region->addr;
 parent_offset += win->win_offset;


 error = bhndb_init_child_resource(r, bridge_res, parent_offset, r_size);
 if (error)
  return (error);


 if ((error = rman_activate_resource(r)))
  return (error);

 return (0);
}
