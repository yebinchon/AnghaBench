
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int32_t ;
struct emu_mem {int* bmap; int* ptb_pages; int blocks; } ;
struct sc_info {struct emu_mem mem; } ;
struct emu_memblk {int buf; int pte_start; int pte_size; scalar_t__ buf_addr; int buf_map; } ;
typedef scalar_t__ bus_addr_t ;


 int EMUMAXPAGES ;
 int EMUPAGESIZE ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int SLIST_INSERT_HEAD (int *,struct emu_memblk*,int ) ;
 void* emu_malloc (struct sc_info*,int,scalar_t__*,int *) ;
 int free (struct emu_memblk*,int ) ;
 int link ;
 struct emu_memblk* malloc (int,int ,int ) ;
 int printf (char*,int,int,int) ;

__attribute__((used)) static void *
emu_memalloc(struct sc_info *sc, u_int32_t sz, bus_addr_t *addr)
{
 u_int32_t blksz, start, idx, ofs, tmp, found;
 struct emu_mem *mem = &sc->mem;
 struct emu_memblk *blk;
 void *buf;

 blksz = sz / EMUPAGESIZE;
 if (sz > (blksz * EMUPAGESIZE))
  blksz++;

 found = 0;
 start = 1;
 while (!found && start + blksz < EMUMAXPAGES) {
  found = 1;
  for (idx = start; idx < start + blksz; idx++)
   if (mem->bmap[idx >> 3] & (1 << (idx & 7)))
    found = 0;
  if (!found)
   start++;
 }
 if (!found)
  return ((void*)0);
 blk = malloc(sizeof(*blk), M_DEVBUF, M_NOWAIT);
 if (blk == ((void*)0))
  return ((void*)0);
 buf = emu_malloc(sc, sz, &blk->buf_addr, &blk->buf_map);
 *addr = blk->buf_addr;
 if (buf == ((void*)0)) {
  free(blk, M_DEVBUF);
  return ((void*)0);
 }
 blk->buf = buf;
 blk->pte_start = start;
 blk->pte_size = blksz;




 ofs = 0;
 for (idx = start; idx < start + blksz; idx++) {
  mem->bmap[idx >> 3] |= 1 << (idx & 7);
  tmp = (uint32_t)(blk->buf_addr + ofs);




  mem->ptb_pages[idx] = (tmp << 1) | idx;
  ofs += EMUPAGESIZE;
 }
 SLIST_INSERT_HEAD(&mem->blocks, blk, link);
 return buf;
}
