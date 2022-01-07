
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_dbuf {int dmachan; } ;
struct resource {int dummy; } ;


 int SNDBUF_F_DMA ;
 int rman_get_start (struct resource*) ;
 int sndbuf_setflags (struct snd_dbuf*,int ,int) ;

int
sndbuf_dmasetup(struct snd_dbuf *b, struct resource *drq)
{

 if (drq == ((void*)0)) {
  b->dmachan = -1;
 } else {
  sndbuf_setflags(b, SNDBUF_F_DMA, 1);
  b->dmachan = rman_get_start(drq);
 }
 return 0;
}
