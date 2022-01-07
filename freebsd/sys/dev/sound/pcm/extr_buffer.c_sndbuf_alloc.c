
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int dmaflags; unsigned int maxsize; unsigned int bufsize; scalar_t__ buf_addr; int buf; int dmamap; int dmatag; int flags; } ;
typedef int bus_dma_tag_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int ENOMEM ;
 int SNDBUF_F_MANAGED ;
 scalar_t__ bus_dmamap_load (int ,int ,int ,unsigned int,int ,struct snd_dbuf*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int,int *) ;
 int sndbuf_free (struct snd_dbuf*) ;
 int sndbuf_resize (struct snd_dbuf*,int,int) ;
 int sndbuf_setmap ;

int
sndbuf_alloc(struct snd_dbuf *b, bus_dma_tag_t dmatag, int dmaflags,
    unsigned int size)
{
 int ret;

 b->dmatag = dmatag;
 b->dmaflags = dmaflags | BUS_DMA_NOWAIT | BUS_DMA_COHERENT;
 b->maxsize = size;
 b->bufsize = b->maxsize;
 b->buf_addr = 0;
 b->flags |= SNDBUF_F_MANAGED;
 if (bus_dmamem_alloc(b->dmatag, (void **)&b->buf, b->dmaflags,
     &b->dmamap)) {
  sndbuf_free(b);
  return (ENOMEM);
 }
 if (bus_dmamap_load(b->dmatag, b->dmamap, b->buf, b->maxsize,
     sndbuf_setmap, b, 0) != 0 || b->buf_addr == 0) {
  sndbuf_free(b);
  return (ENOMEM);
 }

 ret = sndbuf_resize(b, 2, b->maxsize / 2);
 if (ret != 0)
  sndbuf_free(b);

 return (ret);
}
