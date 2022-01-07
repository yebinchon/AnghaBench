
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
 int bitrange (int,int) ;
 void blst_leaf_free (TYPE_1__*,int,int) ;
 int radix_to_skip (int) ;
 int ummin (int,int) ;

__attribute__((used)) static void
blst_meta_free(blmeta_t *scan, daddr_t freeBlk, daddr_t count, u_daddr_t radix)
{
 daddr_t blk, endBlk, i, skip;
 int digit, endDigit;







 scan->bm_bighint = BLIST_MAX_ALLOC;

 if (radix == BLIST_BMAP_RADIX)
  return (blst_leaf_free(scan, freeBlk, count));

 endBlk = ummin(freeBlk + count, (freeBlk + radix) & -radix);
 radix /= BLIST_META_RADIX;
 skip = radix_to_skip(radix);
 blk = freeBlk & -radix;
 digit = (blk / radix) & BLIST_META_MASK;
 endDigit = 1 + (((endBlk - 1) / radix) & BLIST_META_MASK);
 scan->bm_bitmap |= bitrange(digit, endDigit - digit);
 for (i = 1 + digit * skip; blk < endBlk; i += skip) {
  blk += radix;
  count = ummin(blk, endBlk) - freeBlk;
  blst_meta_free(&scan[i], freeBlk, count, radix);
  freeBlk = blk;
 }
}
