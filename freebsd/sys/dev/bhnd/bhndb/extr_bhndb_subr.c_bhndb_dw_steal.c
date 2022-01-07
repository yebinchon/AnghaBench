
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_resources {scalar_t__ dwa_count; struct bhndb_dw_alloc* dw_alloc; int dw_steal_mtx; } ;
struct bhndb_dw_alloc {int target; } ;
typedef int bus_addr_t ;


 int KASSERT (int ,char*) ;
 int * bhndb_dw_next_free (struct bhndb_resources*) ;
 int mtx_lock_spin (int *) ;

struct bhndb_dw_alloc *
bhndb_dw_steal(struct bhndb_resources *br, bus_addr_t *saved)
{
 struct bhndb_dw_alloc *dw_stolen;

 KASSERT(bhndb_dw_next_free(br) == ((void*)0),
     ("attempting to steal an in-use window while free windows remain"));


 if (br->dwa_count == 0)
  return (((void*)0));
 mtx_lock_spin(&br->dw_steal_mtx);

 dw_stolen = &br->dw_alloc[0];
 *saved = dw_stolen->target;
 return (dw_stolen);
}
