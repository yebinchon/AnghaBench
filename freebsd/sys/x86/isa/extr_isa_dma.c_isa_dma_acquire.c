
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int VALID_DMA_MASK ;
 int dma_auto_mode ;
 int dma_inuse ;
 int isa_dma_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;
 int printf (char*,int) ;

int
isa_dma_acquire(int chan)
{





 mtx_lock(&isa_dma_lock);
 if (dma_inuse & (1 << chan)) {
  printf("isa_dma_acquire: channel %d already in use\n", chan);
  mtx_unlock(&isa_dma_lock);
  return (EBUSY);
 }
 dma_inuse |= (1 << chan);
 dma_auto_mode &= ~(1 << chan);
 mtx_unlock(&isa_dma_lock);

 return (0);
}
