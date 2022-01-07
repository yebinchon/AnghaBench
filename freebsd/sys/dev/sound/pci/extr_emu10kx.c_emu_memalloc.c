
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct emu_memblk {int buf_addr; int pte_start; int pte_size; char* owner; void* buf; int buf_map; } ;
struct emu_mem {int* bmap; int* ptb_pages; int blocks; TYPE_1__* card; } ;
typedef int bus_addr_t ;
struct TYPE_2__ {int dbg_level; int dev; } ;


 int EMUPAGESIZE ;
 int EMU_MAXPAGES ;
 int EMU_MAX_BUFSZ ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int SLIST_INSERT_HEAD (int *,struct emu_memblk*,int ) ;
 int bzero (struct emu_memblk*,int) ;
 int device_printf (int ,char*) ;
 void* emu_malloc (struct emu_mem*,int,int*,int *) ;
 int free (struct emu_memblk*,int ) ;
 int link ;
 struct emu_memblk* malloc (int,int ,int ) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void *
emu_memalloc(struct emu_mem *mem, uint32_t sz, bus_addr_t * addr, const char *owner)
{
 uint32_t blksz, start, idx, ofs, tmp, found;
 struct emu_memblk *blk;
 void *membuf;

 blksz = sz / EMUPAGESIZE;
 if (sz > (blksz * EMUPAGESIZE))
  blksz++;
 if (blksz > EMU_MAX_BUFSZ / EMUPAGESIZE) {
  if (mem->card->dbg_level > 2)
   device_printf(mem->card->dev, "emu_memalloc: memory request tool large\n");
  return (((void*)0));
  }

 found = 0;
 start = 1;
 while (!found && start + blksz < EMU_MAXPAGES) {
  found = 1;
  for (idx = start; idx < start + blksz; idx++)
   if (mem->bmap[idx >> 3] & (1 << (idx & 7)))
    found = 0;
  if (!found)
   start++;
 }
 if (!found) {
  if (mem->card->dbg_level > 2)
   device_printf(mem->card->dev, "emu_memalloc: no free space in bitmap\n");
  return (((void*)0));
  }
 blk = malloc(sizeof(*blk), M_DEVBUF, M_NOWAIT);
 if (blk == ((void*)0)) {
  if (mem->card->dbg_level > 2)
   device_printf(mem->card->dev, "emu_memalloc: buffer allocation failed\n");
  return (((void*)0));
  }
 bzero(blk, sizeof(*blk));
 membuf = emu_malloc(mem, sz, &blk->buf_addr, &blk->buf_map);
 *addr = blk->buf_addr;
 if (membuf == ((void*)0)) {
  if (mem->card->dbg_level > 2)
   device_printf(mem->card->dev, "emu_memalloc: can't setup HW memory\n");
  free(blk, M_DEVBUF);
  return (((void*)0));
 }
 blk->buf = membuf;
 blk->pte_start = start;
 blk->pte_size = blksz;
 strncpy(blk->owner, owner, 15);
 blk->owner[15] = '\0';
 ofs = 0;
 for (idx = start; idx < start + blksz; idx++) {
  mem->bmap[idx >> 3] |= 1 << (idx & 7);
  tmp = (uint32_t) (blk->buf_addr + ofs);
  mem->ptb_pages[idx] = (tmp << 1) | idx;
  ofs += EMUPAGESIZE;
 }
 SLIST_INSERT_HEAD(&mem->blocks, blk, link);
 return (membuf);
}
