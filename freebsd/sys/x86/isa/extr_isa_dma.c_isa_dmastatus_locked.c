
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int DMA1_CHN (int) ;
 int DMA1_FFC ;
 int DMA2_CHN (int) ;
 int DMA2_FFC ;
 int MA_OWNED ;
 int disable_intr () ;
 int dma_auto_mode ;
 int dma_busy ;
 int dma_inuse ;
 int enable_intr () ;
 int inb (int) ;
 int isa_dma_lock ;
 int mtx_assert (int *,int ) ;
 int outb (int,int ) ;
 int printf (char*,int) ;

__attribute__((used)) static int
isa_dmastatus_locked(int chan)
{
 u_long cnt = 0;
 int ffport, waport;
 u_long low1, high1, low2, high2;

 mtx_assert(&isa_dma_lock, MA_OWNED);


 if ((dma_inuse & (1 << chan)) == 0) {
  printf("isa_dmastatus: channel %d not active\n", chan);
  return(-1);
 }


 if (((dma_busy & (1 << chan)) == 0) &&
     (dma_auto_mode & (1 << chan)) == 0 ) {
     printf("chan %d not busy\n", chan);
     return -2 ;
 }
 if (chan < 4) {
  ffport = DMA1_FFC;
  waport = DMA1_CHN(chan) + 1;
 } else {
  ffport = DMA2_FFC;
  waport = DMA2_CHN(chan - 4) + 2;
 }

 disable_intr();
 outb(ffport, 0);
 low1 = inb(waport);
 high1 = inb(waport);
 outb(ffport, 0);
 low2 = inb(waport);
 high2 = inb(waport);
 enable_intr();






 if (low1 >= low2) {
  cnt = (low1 + (high1 << 8) + 1) & 0xffff;
 } else {
  cnt = (low2 + (high2 << 8) + 1) & 0xffff;
 }

 if (chan >= 4)
  cnt *= 2;
 return(cnt);
}
