
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMA1_SMSK ;
 int DMA2_SMSK ;
 int dma_auto_mode ;
 int dma_busy ;
 int dma_inuse ;
 int isa_dma_lock ;
 int isa_dmastatus_locked (int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int outb (int ,int) ;
 int printf (char*,int) ;

int
isa_dmastop(int chan)
{
 int status;

 mtx_lock(&isa_dma_lock);
 if ((dma_inuse & (1 << chan)) == 0)
  printf("isa_dmastop: channel %d not acquired\n", chan);

 if (((dma_busy & (1 << chan)) == 0) &&
     ((dma_auto_mode & (1 << chan)) == 0)) {
  printf("chan %d not busy\n", chan);
  mtx_unlock(&isa_dma_lock);
  return -2 ;
 }

 if ((chan & 4) == 0) {
  outb(DMA1_SMSK, (chan & 3) | 4 );
 } else {
  outb(DMA2_SMSK, (chan & 3) | 4 );
 }

 status = isa_dmastatus_locked(chan);

 mtx_unlock(&isa_dma_lock);

 return (status);
}
