
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_daddr_t ;
typedef int daddr_t ;
struct TYPE_3__ {int bm_bitmap; } ;
typedef TYPE_1__ blmeta_t ;


 int BLIST_BMAP_MASK ;
 int bitcount64 (int) ;
 int bitrange (int,int) ;

__attribute__((used)) static daddr_t
blst_leaf_fill(blmeta_t *scan, daddr_t blk, int count)
{
 daddr_t nblks;
 u_daddr_t mask;

 mask = bitrange(blk & BLIST_BMAP_MASK, count);


 nblks = bitcount64(scan->bm_bitmap & mask);

 scan->bm_bitmap &= ~mask;
 return (nblks);
}
