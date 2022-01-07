
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct aoa_dma {int blksz; int bufsz; int channel; int buf; int running; } ;
typedef int kobj_t ;


 int DPRINTF (char*) ;
 int KASSERT (int,char*) ;
 int aoa_dma_set_program (struct aoa_dma*) ;
 int dbdma_resize_channel (int ,int) ;
 int sndbuf_resize (int ,int,int) ;

__attribute__((used)) static u_int32_t
aoa_chan_setblocksize(kobj_t obj, void *data, u_int32_t blocksz)
{
 struct aoa_dma *dma = data;
 int err, lz;

 DPRINTF(("aoa_chan_setblocksize: blocksz = %u, dma->blksz = %u\n",
  blocksz, dma->blksz));
 KASSERT(!dma->running, ("dma is running"));
 KASSERT(blocksz > 0, ("bad blocksz"));


 __asm volatile ("cntlzw %0,%1" : "=r"(lz) : "r"(blocksz));
 blocksz = 1 << (31 - lz);
 DPRINTF(("blocksz = %u\n", blocksz));


 if (blocksz > dma->bufsz)
  blocksz = dma->bufsz;

 err = sndbuf_resize(dma->buf, dma->bufsz / blocksz, blocksz);
 if (err != 0) {
  DPRINTF(("sndbuf_resize returned %d\n", err));
  return (0);
 }

 if (blocksz == dma->blksz)
  return (dma->blksz);


 err = dbdma_resize_channel(dma->channel, 2 + dma->bufsz / blocksz);
 if (err != 0) {
  DPRINTF(("dbdma_resize_channel returned %d\n", err));
  return (0);
 }


 dma->blksz = blocksz;
 aoa_dma_set_program(dma);

 return (dma->blksz);
}
