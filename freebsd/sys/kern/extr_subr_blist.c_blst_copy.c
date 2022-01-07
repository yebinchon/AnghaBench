
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_daddr_t ;
typedef scalar_t__ daddr_t ;
struct TYPE_3__ {int bm_bitmap; } ;
typedef TYPE_1__ blmeta_t ;
typedef int blist_t ;


 scalar_t__ BLIST_BMAP_RADIX ;
 scalar_t__ BLIST_META_RADIX ;
 int blist_free (int ,scalar_t__,int) ;
 scalar_t__ radix_to_skip (scalar_t__) ;

__attribute__((used)) static void
blst_copy(blmeta_t *scan, daddr_t blk, daddr_t radix, blist_t dest,
    daddr_t count)
{
 daddr_t endBlk, i, skip;





 if (radix == BLIST_BMAP_RADIX) {
  u_daddr_t v = scan->bm_bitmap;

  if (v == (u_daddr_t)-1) {
   blist_free(dest, blk, count);
  } else if (v != 0) {
   int i;

   for (i = 0; i < count; ++i) {
    if (v & ((u_daddr_t)1 << i))
     blist_free(dest, blk + i, 1);
   }
  }
  return;
 }





 if (scan->bm_bitmap == 0) {



  return;
 }

 endBlk = blk + count;
 radix /= BLIST_META_RADIX;
 skip = radix_to_skip(radix);
 for (i = 1; blk < endBlk; i += skip) {
  blk += radix;
  count = radix;
  if (blk >= endBlk)
   count -= blk - endBlk;
  blst_copy(&scan[i], blk - radix, radix, dest, count);
 }
}
