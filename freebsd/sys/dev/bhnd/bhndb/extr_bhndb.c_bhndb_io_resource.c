
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bhndb_softc {int bus_res; int dev; } ;
struct bhndb_dw_alloc {scalar_t__ target; TYPE_1__* win; } ;
typedef scalar_t__ bus_size_t ;
typedef scalar_t__ bus_addr_t ;
struct TYPE_2__ {scalar_t__ win_size; scalar_t__ win_offset; } ;


 int BHNDB_LOCK_ASSERT (struct bhndb_softc*,int ) ;
 int MA_OWNED ;
 int bhndb_dw_set_addr (int ,int ,struct bhndb_dw_alloc*,scalar_t__,scalar_t__) ;
 struct bhndb_dw_alloc* bhndb_io_resource_get_window (struct bhndb_softc*,scalar_t__,scalar_t__,int*,int*,scalar_t__*) ;
 int panic (char*,unsigned long long,scalar_t__) ;

__attribute__((used)) static inline struct bhndb_dw_alloc *
bhndb_io_resource(struct bhndb_softc *sc, bus_addr_t addr, bus_size_t size,
    bus_size_t *offset, bool *stolen, bus_addr_t *restore)
{
 struct bhndb_dw_alloc *dwa;
 bool borrowed;
 int error;

 BHNDB_LOCK_ASSERT(sc, MA_OWNED);

 dwa = bhndb_io_resource_get_window(sc, addr, size, &borrowed, stolen,
     restore);



 if (addr < dwa->target ||
     addr > dwa->target + dwa->win->win_size ||
     (dwa->target + dwa->win->win_size) - addr < size)
 {

  if (borrowed) {
   panic("borrowed register window does not map expected "
       "range 0x%llx-0x%llx\n",
       (unsigned long long) addr,
       (unsigned long long) addr+size-1);
  }

  error = bhndb_dw_set_addr(sc->dev, sc->bus_res, dwa, addr,
      size);
  if (error) {
      panic("failed to set register window target mapping "
       "0x%llx-0x%llx\n",
       (unsigned long long) addr,
       (unsigned long long) addr+size-1);
  }
 }


 *offset = (addr - dwa->target) + dwa->win->win_offset;
 return (dwa);
}
