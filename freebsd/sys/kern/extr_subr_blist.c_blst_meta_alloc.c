
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_daddr_t ;
typedef int daddr_t ;
struct TYPE_4__ {int bm_bitmap; int bm_bighint; } ;
typedef TYPE_1__ blmeta_t ;


 int BLIST_BMAP_RADIX ;
 int BLIST_MAX_ALLOC ;
 int BLIST_META_MASK ;
 int BLIST_META_RADIX ;
 int SWAPBLK_NONE ;
 int bitpos (int) ;
 int bitrange (int,int) ;
 int blst_leaf_alloc (TYPE_1__*,int,int*,int) ;
 int radix_to_skip (int) ;

__attribute__((used)) static daddr_t
blst_meta_alloc(blmeta_t *scan, daddr_t cursor, int *count,
    int maxcount, u_daddr_t radix)
{
 daddr_t blk, i, r, skip;
 u_daddr_t mask;
 bool scan_from_start;
 int digit;

 if (radix == BLIST_BMAP_RADIX)
  return (blst_leaf_alloc(scan, cursor, count, maxcount));
 blk = cursor & -radix;
 scan_from_start = (cursor == blk);
 radix /= BLIST_META_RADIX;
 skip = radix_to_skip(radix);
 mask = scan->bm_bitmap;


 digit = (cursor / radix) & BLIST_META_MASK;
 mask &= (u_daddr_t)-1 << digit;
 if (mask == 0)
  return (SWAPBLK_NONE);






 if (((mask >> digit) & 1) == 1)
  cursor -= digit * radix;
 else
  cursor = blk;




 do {
  digit = bitpos(mask);
  i = 1 + digit * skip;
  if (*count <= scan[i].bm_bighint) {



   r = blst_meta_alloc(&scan[i], cursor + digit * radix,
       count, maxcount, radix);
   if (r != SWAPBLK_NONE) {
    if (scan[i].bm_bitmap == 0)
     scan->bm_bitmap ^= bitrange(digit, 1);
    return (r);
   }
  }
  cursor = blk;
 } while ((mask ^= bitrange(digit, 1)) != 0);





 if (scan_from_start && !(digit == BLIST_META_RADIX - 1 &&
     scan[i].bm_bighint == BLIST_MAX_ALLOC))
  scan->bm_bighint = *count - 1;

 return (SWAPBLK_NONE);
}
