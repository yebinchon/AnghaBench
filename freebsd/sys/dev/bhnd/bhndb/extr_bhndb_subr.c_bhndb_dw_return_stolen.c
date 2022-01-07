
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct bhndb_resources {int dw_steal_mtx; } ;
struct bhndb_dw_alloc {int dummy; } ;
typedef int device_t ;
typedef scalar_t__ bus_addr_t ;


 int MA_OWNED ;
 int bhndb_dw_set_addr (int ,struct bhndb_resources*,struct bhndb_dw_alloc*,scalar_t__,int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock_spin (int *) ;
 int panic (char*,int ,int) ;

void
bhndb_dw_return_stolen(device_t dev, struct bhndb_resources *br,
    struct bhndb_dw_alloc *dwa, bus_addr_t saved)
{
 int error;

 mtx_assert(&br->dw_steal_mtx, MA_OWNED);

 error = bhndb_dw_set_addr(dev, br, dwa, saved, 0);
 if (error) {
  panic("failed to restore register window target %#jx: %d\n",
      (uintmax_t)saved, error);
 }

 mtx_unlock_spin(&br->dw_steal_mtx);
}
