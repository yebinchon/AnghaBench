
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef scalar_t__ daddr_t ;
typedef TYPE_1__* blist_t ;
struct TYPE_3__ {scalar_t__ bl_blocks; int bl_avail; int bl_radix; int bl_root; } ;


 int KASSERT (int,char*) ;
 int blst_meta_free (int ,scalar_t__,scalar_t__,int ) ;

void
blist_free(blist_t bl, daddr_t blkno, daddr_t count)
{

 KASSERT(blkno >= 0 && blkno + count <= bl->bl_blocks,
     ("freeing invalid range: blkno %jx, count %d, blocks %jd",
     (uintmax_t)blkno, (int)count, (uintmax_t)bl->bl_blocks));
 blst_meta_free(bl->bl_root, blkno, count, bl->bl_radix);
 bl->bl_avail += count;
}
