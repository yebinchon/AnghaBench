
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_daddr_t ;
typedef int daddr_t ;
struct TYPE_4__ {int bm_bitmap; int bm_bighint; } ;
typedef TYPE_1__ blmeta_t ;


 int BLIST_BMAP_MASK ;
 int BLIST_BMAP_RADIX ;
 int BLIST_MAX_ALLOC ;
 int SWAPBLK_NONE ;
 int bitpos (int) ;
 int bitrange (int,int) ;
 int blst_next_leaf_alloc (TYPE_1__*,int,int,int) ;
 int flip_hibits (int) ;
 int fls (int) ;

__attribute__((used)) static daddr_t
blst_leaf_alloc(blmeta_t *scan, daddr_t blk, int *count, int maxcount)
{
 u_daddr_t cursor_mask, mask;
 int count1, hi, lo, num_shifts, range1, range_ext;

 range1 = 0;
 count1 = *count - 1;
 num_shifts = fls(count1);
 mask = scan->bm_bitmap;
 while (flip_hibits(mask) != 0 && num_shifts > 0) {
  num_shifts--;
  range_ext = range1 + ((count1 >> num_shifts) & 1);






  mask &= (daddr_t)mask >> range_ext;
  range1 += range_ext;
 }
 if (mask == 0) {




  scan->bm_bighint = range1;
  return (SWAPBLK_NONE);
 }


 if ((blk & BLIST_BMAP_MASK) != 0) {
  cursor_mask = mask & bitrange(0, blk & BLIST_BMAP_MASK);
  if (cursor_mask != 0) {
   mask ^= cursor_mask;
   if (mask == 0)
    return (SWAPBLK_NONE);






   range1 = BLIST_MAX_ALLOC - 1;
  }
  blk &= ~BLIST_BMAP_MASK;
 }





 lo = bitpos(mask);




 if (flip_hibits(mask) != 0) {

  hi = bitpos(flip_hibits(mask)) + count1;
  if (maxcount < hi - lo)
   hi = lo + maxcount;
  *count = hi - lo;
  mask = bitrange(lo, *count);
 } else if (maxcount <= BLIST_BMAP_RADIX - lo) {

  hi = lo + maxcount;
  *count = maxcount;
  mask = bitrange(lo, *count);
 } else {

  count1 = *count - (BLIST_BMAP_RADIX - lo);
  maxcount -= BLIST_BMAP_RADIX - lo;
  hi = blst_next_leaf_alloc(scan, blk, count1, maxcount);
  if (hi < count1)
   return (SWAPBLK_NONE);
  *count = BLIST_BMAP_RADIX - lo + hi;
  hi = BLIST_BMAP_RADIX;
 }

 if (hi == BLIST_BMAP_RADIX) {




  scan->bm_bighint = range1;
 }

 scan->bm_bitmap &= ~mask;
 return (blk + lo);
}
