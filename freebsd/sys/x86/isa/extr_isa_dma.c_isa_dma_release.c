
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VALID_DMA_MASK ;
 int dma_auto_mode ;
 int dma_busy ;
 int dma_inuse ;
 int isa_dma_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;
 int printf (char*,int) ;

void
isa_dma_release(int chan)
{
 mtx_lock(&isa_dma_lock);


 if (dma_busy & (1 << chan)) {
  dma_busy &= ~(1 << chan);






 }

 dma_inuse &= ~(1 << chan);
 dma_auto_mode &= ~(1 << chan);

 mtx_unlock(&isa_dma_lock);
}
