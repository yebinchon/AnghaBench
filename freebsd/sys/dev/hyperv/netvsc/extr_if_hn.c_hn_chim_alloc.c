
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_long ;
struct hn_softc {int hn_chim_bmap_cnt; int hn_chim_cnt; int * hn_chim_bmap; } ;


 int HN_NVS_CHIM_IDX_INVALID ;
 int KASSERT (int,char*) ;
 int LONG_BIT ;
 scalar_t__ atomic_testandset_long (int *,int) ;
 int ffsl (int ) ;

__attribute__((used)) static __inline uint32_t
hn_chim_alloc(struct hn_softc *sc)
{
 int i, bmap_cnt = sc->hn_chim_bmap_cnt;
 u_long *bmap = sc->hn_chim_bmap;
 uint32_t ret = HN_NVS_CHIM_IDX_INVALID;

 for (i = 0; i < bmap_cnt; ++i) {
  int idx;

  idx = ffsl(~bmap[i]);
  if (idx == 0)
   continue;

  --idx;
  KASSERT(i * LONG_BIT + idx < sc->hn_chim_cnt,
      ("invalid i %d and idx %d", i, idx));

  if (atomic_testandset_long(&bmap[i], idx))
   continue;

  ret = i * LONG_BIT + idx;
  break;
 }
 return (ret);
}
