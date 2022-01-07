
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fast; } ;
struct TYPE_7__ {int dma; scalar_t__ type; int bcr0; int bcr0b; TYPE_3__* chan; TYPE_1__ opt; scalar_t__ port; int bcr1b; int bcr1; } ;
typedef TYPE_2__ cx_board_t ;
typedef int cr_dat_tst_t ;
struct TYPE_8__ {scalar_t__ type; } ;


 int BCR0 (scalar_t__) ;
 int BCR1 (scalar_t__) ;
 int BCR2 (scalar_t__) ;
 int BCR2_BUS0 ;
 int BCR2_BUS1 ;
 int BCR2_TMS ;
 scalar_t__ B_SIGMA_800 ;
 int DMA_MASK ;
 int DMA_MASK_CLEAR ;
 int DMA_MODE ;
 int DMA_MODE_MASTER ;
 int NCHAN ;
 scalar_t__ T_NONE ;
 int cx_download (scalar_t__,unsigned char const*,long,int const*) ;
 int cx_setup_chan (TYPE_3__*) ;
 int cx_setup_chip (TYPE_3__*) ;
 int outb (int ,int) ;
 int outw (int ,int ) ;

int cx_setup_board (cx_board_t *b, const unsigned char *firmware,
 long bits, const cr_dat_tst_t *tst)
{
 int i;


 outb (DMA_MASK, (b->dma & 3) | DMA_MASK_CLEAR);


 outb (BCR0(b->port), 0);
 if (b->chan[8].type || b->chan[12].type)
  outb (BCR0(b->port+0x10), 0);


 if (b->type == B_SIGMA_800) {

  outb (BCR2(b->port), BCR2_TMS);
  if (b->chan[8].type || b->chan[12].type)
   outb (BCR2(b->port+0x10), BCR2_TMS);
  outb (BCR2(b->port), 0);
  if (b->chan[8].type || b->chan[12].type)
   outb (BCR2(b->port+0x10), 0);

  if (firmware &&
      (! cx_download (b->port, firmware, bits, tst) ||
      ((b->chan[8].type || b->chan[12].type) &&
      ! cx_download (b->port+0x10, firmware, bits, tst))))
   return (0);
 }





 outb (BCR0(b->port), b->bcr0);
 if (b->chan[8].type || b->chan[12].type)
  outb (BCR0(b->port+0x10), b->bcr0b);


 outw (BCR1(b->port), b->bcr1);
 if (b->chan[8].type || b->chan[12].type)
  outw (BCR1(b->port+0x10), b->bcr1b);

 if (b->type == B_SIGMA_800)
  outb (BCR2(b->port), b->opt.fast &
   (BCR2_BUS0 | BCR2_BUS1));


 for (i=0; i<NCHAN; i+=4)
  if (b->chan[i].type != T_NONE)
   cx_setup_chip (b->chan + i);


 outb (DMA_MODE, (b->dma & 3) | DMA_MODE_MASTER);


 outb (DMA_MASK, b->dma & 3);


 for (i=0; i<NCHAN; ++i)
  if (b->chan[i].type != T_NONE)
   cx_setup_chan (b->chan + i);
 return (1);
}
