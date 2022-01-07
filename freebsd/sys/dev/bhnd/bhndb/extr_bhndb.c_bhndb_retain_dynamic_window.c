
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct bhndb_softc {int bus_res; int dev; } ;
struct bhndb_dw_alloc {TYPE_1__* win; } ;
typedef scalar_t__ rman_res_t ;
struct TYPE_2__ {scalar_t__ win_size; } ;


 int BHNDB_LOCK_ASSERT (struct bhndb_softc*,int ) ;
 int MA_OWNED ;
 struct bhndb_dw_alloc* bhndb_dw_find_mapping (int ,scalar_t__,scalar_t__) ;
 struct bhndb_dw_alloc* bhndb_dw_next_free (int ) ;
 scalar_t__ bhndb_dw_retain (int ,struct bhndb_dw_alloc*,struct resource*) ;
 int bhndb_dw_set_addr (int ,int ,struct bhndb_dw_alloc*,scalar_t__,scalar_t__) ;
 int device_printf (int ,char*,unsigned long long,scalar_t__,int) ;
 scalar_t__ rman_get_size (struct resource*) ;
 scalar_t__ rman_get_start (struct resource*) ;

__attribute__((used)) static struct bhndb_dw_alloc *
bhndb_retain_dynamic_window(struct bhndb_softc *sc, struct resource *r)
{
 struct bhndb_dw_alloc *dwa;
 rman_res_t r_start, r_size;
 int error;

 BHNDB_LOCK_ASSERT(sc, MA_OWNED);

 r_start = rman_get_start(r);
 r_size = rman_get_size(r);


 dwa = bhndb_dw_find_mapping(sc->bus_res, r_start, r_size);
 if (dwa != ((void*)0)) {
  if (bhndb_dw_retain(sc->bus_res, dwa, r) == 0)
   return (dwa);

  return (((void*)0));
 }


 dwa = bhndb_dw_next_free(sc->bus_res);
 if (dwa == ((void*)0)) {

  return (((void*)0));
 }


 if (dwa->win->win_size < rman_get_size(r))
  return (((void*)0));


 error = bhndb_dw_set_addr(sc->dev, sc->bus_res, dwa, rman_get_start(r),
     rman_get_size(r));
 if (error) {
  device_printf(sc->dev, "dynamic window initialization "
   "for 0x%llx-0x%llx failed: %d\n",
   (unsigned long long) r_start,
   (unsigned long long) r_start + r_size - 1,
   error);
  return (((void*)0));
 }


 if (bhndb_dw_retain(sc->bus_res, dwa, r))
  return (((void*)0));

 return (dwa);
}
