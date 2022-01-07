
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sg_ent {scalar_t__* addr; scalar_t__* len; } ;
struct TYPE_3__ {scalar_t__ ds_len; int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 scalar_t__ htobe32 (scalar_t__) ;
 scalar_t__ htobe64 (int ) ;

__attribute__((used)) static __inline void
make_sgl(struct sg_ent *sgp, bus_dma_segment_t *segs, int nsegs)
{
 int i, idx;

 for (idx = 0, i = 0; i < nsegs; i++) {



  if (segs[i].ds_len == 0)
   continue;
  if (i && idx == 0)
   ++sgp;

  sgp->len[idx] = htobe32(segs[i].ds_len);
  sgp->addr[idx] = htobe64(segs[i].ds_addr);
  idx ^= 1;
 }

 if (idx) {
  sgp->len[idx] = 0;
  sgp->addr[idx] = 0;
 }
}
