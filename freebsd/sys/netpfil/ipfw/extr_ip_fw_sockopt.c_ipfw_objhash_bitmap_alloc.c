
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_long ;


 int BLOCK_ITEMS ;
 size_t IPFW_MAX_SETS ;
 int KASSERT (int,char*) ;
 int M_IPFW ;
 int M_WAITOK ;
 int * malloc (size_t,int ,int ) ;
 int memset (int *,int,size_t) ;

void
ipfw_objhash_bitmap_alloc(uint32_t items, void **idx, int *pblocks)
{
 size_t size;
 int max_blocks;
 u_long *idx_mask;

 KASSERT((items % BLOCK_ITEMS) == 0,
    ("bitmask size needs to power of 2 and greater or equal to %zu",
     BLOCK_ITEMS));

 max_blocks = items / BLOCK_ITEMS;
 size = items / 8;
 idx_mask = malloc(size * IPFW_MAX_SETS, M_IPFW, M_WAITOK);

 memset(idx_mask, 0xFF, size * IPFW_MAX_SETS);
 *idx_mask &= ~(u_long)1;

 *idx = idx_mask;
 *pblocks = max_blocks;
}
