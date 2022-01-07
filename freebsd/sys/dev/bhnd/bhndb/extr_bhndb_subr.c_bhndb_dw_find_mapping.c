
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_resources {size_t dwa_count; struct bhndb_dw_alloc* dw_alloc; } ;
struct bhndb_regwin {scalar_t__ win_size; } ;
struct bhndb_dw_alloc {scalar_t__ target; struct bhndb_regwin* win; } ;
typedef scalar_t__ bhnd_size_t ;
typedef scalar_t__ bhnd_addr_t ;



struct bhndb_dw_alloc *
bhndb_dw_find_mapping(struct bhndb_resources *br, bhnd_addr_t addr,
    bhnd_size_t size)
{
 struct bhndb_dw_alloc *dwr;
 const struct bhndb_regwin *win;


 for (size_t i = 0; i < br->dwa_count; i++) {
  dwr = &br->dw_alloc[i];
  win = dwr->win;


  if (addr < dwr->target)
   continue;

  if (addr + size > dwr->target + win->win_size)
   continue;


  return (dwr);
 }


 return (((void*)0));
}
