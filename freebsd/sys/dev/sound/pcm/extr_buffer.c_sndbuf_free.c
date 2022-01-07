
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int flags; int * dmamap; int * dmatag; scalar_t__ sl; int * buf; int * shadbuf; int * tmpbuf; scalar_t__ buf_addr; } ;


 int M_DEVBUF ;
 int SNDBUF_F_MANAGED ;
 int bus_dmamap_unload (int *,int *) ;
 int bus_dmamem_free (int *,int *,int *) ;
 int free (int *,int ) ;

void
sndbuf_free(struct snd_dbuf *b)
{
 if (b->tmpbuf)
  free(b->tmpbuf, M_DEVBUF);

 if (b->shadbuf)
  free(b->shadbuf, M_DEVBUF);

 if (b->buf) {
  if (b->flags & SNDBUF_F_MANAGED) {
   if (b->buf_addr)
    bus_dmamap_unload(b->dmatag, b->dmamap);
   if (b->dmatag)
    bus_dmamem_free(b->dmatag, b->buf, b->dmamap);
  } else
   free(b->buf, M_DEVBUF);
 }

 b->tmpbuf = ((void*)0);
 b->shadbuf = ((void*)0);
 b->buf = ((void*)0);
 b->sl = 0;
 b->dmatag = ((void*)0);
 b->dmamap = ((void*)0);
}
