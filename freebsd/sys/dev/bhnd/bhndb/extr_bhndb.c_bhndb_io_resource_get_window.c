
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_softc {struct bhndb_resources* bus_res; } ;
struct bhndb_resources {size_t dwa_count; struct bhndb_dw_alloc* dw_alloc; } ;
struct bhndb_regwin {scalar_t__ win_type; scalar_t__ win_size; } ;
struct bhndb_region {int alloc_flags; } ;
struct bhndb_dw_alloc {scalar_t__ target; struct bhndb_regwin* win; } ;
typedef scalar_t__ bus_size_t ;
typedef scalar_t__ bus_addr_t ;


 int BHNDB_ALLOC_FULFILL_ON_OVERCOMMIT ;
 int BHNDB_LOCK_ASSERT (struct bhndb_softc*,int ) ;
 scalar_t__ BHNDB_REGWIN_T_DYN ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 struct bhndb_dw_alloc* bhndb_dw_next_free (struct bhndb_resources*) ;
 struct bhndb_dw_alloc* bhndb_dw_steal (struct bhndb_resources*,scalar_t__*) ;
 struct bhndb_region* bhndb_find_resource_region (struct bhndb_resources*,scalar_t__,scalar_t__) ;
 int panic (char*,unsigned long long,scalar_t__) ;

__attribute__((used)) static struct bhndb_dw_alloc *
bhndb_io_resource_get_window(struct bhndb_softc *sc, bus_addr_t addr,
    bus_size_t size, bool *borrowed, bool *stolen, bus_addr_t *restore)
{
 struct bhndb_resources *br;
 struct bhndb_dw_alloc *dwa;
 struct bhndb_region *region;

 BHNDB_LOCK_ASSERT(sc, MA_OWNED);

 br = sc->bus_res;
 *borrowed = 0;
 *stolen = 0;


 if ((dwa = bhndb_dw_next_free(br)) != ((void*)0))
  return (dwa);




 for (size_t i = 0; i < br->dwa_count; i++) {
  const struct bhndb_regwin *win;

  dwa = &br->dw_alloc[i];
  win = dwa->win;

  KASSERT(win->win_type == BHNDB_REGWIN_T_DYN,
   ("invalid register window type"));


  if (addr < dwa->target)
   continue;

  if (addr + size > dwa->target + win->win_size)
   continue;


  *borrowed = 1;
  return (dwa);
 }



 region = bhndb_find_resource_region(br, addr, size);
 if (region == ((void*)0))
  return (((void*)0));

 if ((region->alloc_flags & BHNDB_ALLOC_FULFILL_ON_OVERCOMMIT) == 0)
  return (((void*)0));




 if ((dwa = bhndb_dw_steal(br, restore)) != ((void*)0)) {
  *stolen = 1;
  return (dwa);
 }

 panic("register windows exhausted attempting to map 0x%llx-0x%llx\n",
     (unsigned long long) addr, (unsigned long long) addr+size-1);
}
