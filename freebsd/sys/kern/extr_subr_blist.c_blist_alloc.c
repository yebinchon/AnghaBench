
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ daddr_t ;
typedef TYPE_1__* blist_t ;
struct TYPE_3__ {scalar_t__ bl_cursor; int bl_avail; scalar_t__ bl_blocks; int bl_radix; int bl_root; } ;


 int BLIST_MAX_ALLOC ;
 int KASSERT (int,char*) ;
 scalar_t__ SWAPBLK_NONE ;
 scalar_t__ blst_meta_alloc (int ,scalar_t__,int*,int,int ) ;

daddr_t
blist_alloc(blist_t bl, int *count, int maxcount)
{
 daddr_t blk, cursor;

 KASSERT(*count <= maxcount,
     ("invalid parameters %d > %d", *count, maxcount));
 KASSERT(*count <= BLIST_MAX_ALLOC,
     ("minimum allocation too large: %d", *count));







 for (cursor = bl->bl_cursor;; cursor = 0) {
  blk = blst_meta_alloc(bl->bl_root, cursor, count, maxcount,
      bl->bl_radix);
  if (blk != SWAPBLK_NONE) {
   bl->bl_avail -= *count;
   bl->bl_cursor = blk + *count;
   if (bl->bl_cursor == bl->bl_blocks)
    bl->bl_cursor = 0;
   return (blk);
  }
  if (cursor == 0)
   return (SWAPBLK_NONE);
 }
}
