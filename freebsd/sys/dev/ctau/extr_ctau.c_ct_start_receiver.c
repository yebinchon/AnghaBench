
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int DSR; int DIR; int BFL; int CDA; int EDA; int SARB; int BCR; int DAR; int DARB; int DCR; int TCSR; int TCNT; int TCONR; int TEPR; } ;
struct TYPE_7__ {unsigned char dma_rrc; unsigned char pio_rrc; } ;
struct TYPE_9__ {scalar_t__ mode; int CMD; TYPE_3__ RX; TYPE_2__ opt; int RRC; int IE2; int IE0; TYPE_1__* board; scalar_t__ num; } ;
typedef TYPE_4__ ct_chan_t ;
struct TYPE_6__ {int port; } ;


 unsigned char CMD_RX_ENABLE ;
 unsigned char DCR_ABORT ;
 unsigned char DIR_CHAIN_BOFE ;
 unsigned char DIR_CHAIN_COFE ;
 unsigned char DIR_CHAIN_EOME ;
 unsigned char DIR_EOTE ;
 unsigned char DSR_DMA_ENABLE ;
 int IE0_RX_INTE ;
 int IE0_RX_RDYE ;
 int IE2_ASYNC_FRMEE ;
 int IE2_ASYNC_PEE ;
 int IE2_OVRNE ;
 int IER0 (int ) ;
 int IER0_RX_INTE_0 ;
 int IER0_RX_INTE_1 ;
 int IER0_RX_RDYE_0 ;
 int IER0_RX_RDYE_1 ;
 int IER1 (int ) ;
 int IER1_RX_DMERE_0 ;
 int IER1_RX_DMERE_1 ;
 int IER1_RX_DME_0 ;
 int IER1_RX_DME_1 ;
 int IER2 (int ) ;
 int IER2_RX_TME_0 ;
 int IER2_RX_TME_1 ;
 scalar_t__ M_ASYNC ;
 unsigned char TCSR_ENABLE ;
 unsigned char TCSR_INTR ;
 unsigned char TEPR_64 ;
 int inb (int ) ;
 int outb (int ,unsigned char) ;
 int outw (int ,unsigned int) ;

void ct_start_receiver (ct_chan_t *c, int dma, unsigned long buf,
 unsigned len, unsigned long desc, unsigned long lim)
{
 int ier0 = inb (IER0(c->board->port));
 int ier1 = inb (IER1(c->board->port));
 int ier2 = inb (IER2(c->board->port));
 int ie0 = inb (c->IE0);
 int ie2 = inb (c->IE2);

 if (dma) {
  ier1 |= c->num ? (IER1_RX_DMERE_1 | IER1_RX_DME_1) :
   (IER1_RX_DMERE_0 | IER1_RX_DME_0);
  if (c->mode == M_ASYNC) {
   ier0 |= c->num ? IER0_RX_INTE_1 : IER0_RX_INTE_0;
   ie0 |= IE0_RX_INTE;
   ie2 |= IE2_OVRNE | IE2_ASYNC_FRMEE | IE2_ASYNC_PEE;
  }
 } else {
  ier0 |= c->num ? (IER0_RX_INTE_1 | IER0_RX_RDYE_1) :
   (IER0_RX_INTE_0 | IER0_RX_RDYE_0);
  ie0 |= IE0_RX_INTE | IE0_RX_RDYE;
 }


 if (! dma) {
  outb (c->RX.TEPR, TEPR_64);
  outw (c->RX.TCONR, 160);
  outw (c->RX.TCNT, 0);
  outb (c->RX.TCSR, TCSR_ENABLE | TCSR_INTR);
  ier2 |= c->num ? IER2_RX_TME_1 : IER2_RX_TME_0;
 }


 outb (IER0(c->board->port), ier0);
 outb (IER1(c->board->port), ier1);
 outb (IER2(c->board->port), ier2);
 outb (c->IE0, ie0);
 outb (c->IE2, ie2);


 outb (c->RRC, dma ? c->opt.dma_rrc : c->opt.pio_rrc);


 if (dma) {
  outb (c->RX.DCR, DCR_ABORT);
  if (c->mode == M_ASYNC) {

   outb (c->RX.DARB, (unsigned char) (buf >> 16));
   outw (c->RX.DAR, (unsigned short) buf);
   outw (c->RX.BCR, len);
   outb (c->RX.DIR, DIR_EOTE);
  } else {

   outb (c->RX.SARB, (unsigned char) (desc >> 16));
   outw (c->RX.EDA, (unsigned short) lim);
   outw (c->RX.CDA, (unsigned short) desc);
   outw (c->RX.BFL, len);
   outb (c->RX.DIR, DIR_CHAIN_EOME | DIR_CHAIN_BOFE |
    DIR_CHAIN_COFE);
  }
  outb (c->RX.DSR, DSR_DMA_ENABLE);
 }
 outb (c->CMD, CMD_RX_ENABLE);
}
