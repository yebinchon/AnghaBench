
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMA1_MODE ;
 int DMA1_SMSK ;
 int DMA2_MODE ;
 int DMA2_SMSK ;
 int DMA37MD_CASCADE ;
 int VALID_DMA_MASK ;
 int isa_dma_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int outb (int ,int) ;
 int panic (char*) ;

void
isa_dmacascade(int chan)
{





 mtx_lock(&isa_dma_lock);

 if ((chan & 4) == 0) {
  outb(DMA1_MODE, DMA37MD_CASCADE | chan);
  outb(DMA1_SMSK, chan);
 } else {
  outb(DMA2_MODE, DMA37MD_CASCADE | (chan & 3));
  outb(DMA2_SMSK, chan & 3);
 }
 mtx_unlock(&isa_dma_lock);
}
