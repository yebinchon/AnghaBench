
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhndb_resources {int dw_steal_mtx; } ;
struct bhndb_regwin {scalar_t__ win_size; } ;
struct bhndb_dw_alloc {int target; struct bhndb_regwin* win; } ;
typedef int device_t ;
typedef scalar_t__ bus_size_t ;
typedef scalar_t__ bus_addr_t ;


 int BHNDB_SET_WINDOW_ADDR (int ,struct bhndb_regwin*,int) ;
 int ENOMEM ;
 int KASSERT (int,char*) ;
 scalar_t__ bhndb_dw_is_free (struct bhndb_resources*,struct bhndb_dw_alloc*) ;
 scalar_t__ mtx_owned (int *) ;

int
bhndb_dw_set_addr(device_t dev, struct bhndb_resources *br,
    struct bhndb_dw_alloc *dwa, bus_addr_t addr, bus_size_t size)
{
 const struct bhndb_regwin *rw;
 bus_addr_t offset;
 int error;

 rw = dwa->win;

 KASSERT(bhndb_dw_is_free(br, dwa) || mtx_owned(&br->dw_steal_mtx),
     ("attempting to set the target address on an in-use window"));


 offset = addr % rw->win_size;
 dwa->target = addr - offset;


 if (rw->win_size - offset < size)
  return (ENOMEM);


 error = BHNDB_SET_WINDOW_ADDR(dev, dwa->win, dwa->target);
 if (error) {
  dwa->target = 0x0;
  return (error);
 }

 return (0);
}
