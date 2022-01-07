
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caddr_t ;


 int DMA1_SMSK ;
 int DMA2_SMSK ;
 int ISADMA_READ ;
 int VALID_DMA_MASK ;
 int bcopy (int ,int ,int) ;
 int dma_auto_mode ;
 int * dma_bouncebuf ;
 int dma_bounced ;
 int dma_busy ;
 int dma_inuse ;
 int isa_dma_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int outb (int ,int) ;
 int panic (char*) ;
 int printf (char*,int) ;

void
isa_dmadone(int flags, caddr_t addr, int nbytes, int chan)
{
 mtx_lock(&isa_dma_lock);
 if (((dma_busy & (1 << chan)) == 0) &&
     (dma_auto_mode & (1 << chan)) == 0 )
  printf("isa_dmadone: channel %d not busy\n", chan);

 if ((dma_auto_mode & (1 << chan)) == 0)
  outb(chan & 4 ? DMA2_SMSK : DMA1_SMSK, (chan & 3) | 4);

 if (dma_bounced & (1 << chan)) {

  if (flags & ISADMA_READ)
   bcopy(dma_bouncebuf[chan], addr, nbytes);

  dma_bounced &= ~(1 << chan);
 }
 dma_busy &= ~(1 << chan);
 mtx_unlock(&isa_dma_lock);
}
