
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int ENOMEM ;
 int M_DEVBUF ;
 int VALID_DMA_MASK ;
 int contigfree (void*,int ,int ) ;
 void* contigmalloc (int ,int ,int,unsigned long,int,unsigned long,int) ;
 int ** dma_bouncebuf ;
 int * dma_bouncebufsize ;
 int free (void*,int ) ;
 int isa_dma_lock ;
 scalar_t__ isa_dmarangecheck (void*,int ,int) ;
 void* malloc (int ,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;

int
isa_dma_init(int chan, u_int bouncebufsize, int flag)
{
 void *buf;
 int contig;
 buf = malloc(bouncebufsize, M_DEVBUF, flag);
 if (buf != ((void*)0)) {
  if (isa_dmarangecheck(buf, bouncebufsize, chan) != 0) {
   free(buf, M_DEVBUF);
   buf = ((void*)0);
  }
  contig = 0;
 }

 if (buf == ((void*)0)) {
  buf = contigmalloc(bouncebufsize, M_DEVBUF, flag, 0ul, 0xfffffful,
      1ul, chan & 4 ? 0x20000ul : 0x10000ul);
  contig = 1;
 }

 if (buf == ((void*)0))
  return (ENOMEM);

 mtx_lock(&isa_dma_lock);
 if (dma_bouncebuf[chan] != ((void*)0)) {
  if (contig)
   contigfree(buf, bouncebufsize, M_DEVBUF);
  else
   free(buf, M_DEVBUF);
  mtx_unlock(&isa_dma_lock);
  return (0);
 }

 dma_bouncebufsize[chan] = bouncebufsize;
 dma_bouncebuf[chan] = buf;

 mtx_unlock(&isa_dma_lock);

 return (0);
}
