
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;
typedef int u_long ;
struct hn_softc {unsigned long hn_chim_bmap_cnt; int* hn_chim_bmap; } ;


 int KASSERT (int,char*) ;
 unsigned long LONG_BIT ;
 int atomic_clear_long (int*,int) ;

__attribute__((used)) static __inline void
hn_chim_free(struct hn_softc *sc, uint32_t chim_idx)
{
 u_long mask;
 uint32_t idx;

 idx = chim_idx / LONG_BIT;
 KASSERT(idx < sc->hn_chim_bmap_cnt,
     ("invalid chimney index 0x%x", chim_idx));

 mask = 1UL << (chim_idx % LONG_BIT);
 KASSERT(sc->hn_chim_bmap[idx] & mask,
     ("index bitmap 0x%lx, chimney index %u, "
      "bitmap idx %d, bitmask 0x%lx",
      sc->hn_chim_bmap[idx], chim_idx, idx, mask));

 atomic_clear_long(&sc->hn_chim_bmap[idx], mask);
}
