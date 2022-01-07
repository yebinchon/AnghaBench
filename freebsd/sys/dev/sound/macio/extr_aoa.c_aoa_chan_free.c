
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoa_dma {int channel; int buf; } ;
typedef int kobj_t ;


 int aoa_dma_delete (struct aoa_dma*) ;
 int dbdma_free_channel (int ) ;
 int sndbuf_free (int ) ;

__attribute__((used)) static int
aoa_chan_free(kobj_t obj, void *data)
{
 struct aoa_dma *dma = data;

 sndbuf_free(dma->buf);
 dbdma_free_channel(dma->channel);
 aoa_dma_delete(dma);

 return (0);
}
