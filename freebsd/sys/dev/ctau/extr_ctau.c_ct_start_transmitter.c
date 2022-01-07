
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int DIR; int CDA; int EDA; int SARB; int BCR; int SAR; int DCR; } ;
struct TYPE_6__ {int dma_trc0; int pio_trc0; int dma_trc1; int pio_trc1; } ;
struct TYPE_9__ {scalar_t__ mode; TYPE_3__* board; int CMD; TYPE_2__ TX; TYPE_1__ opt; int TRC1; int TRC0; int IE1; int IE0; scalar_t__ num; } ;
typedef TYPE_4__ ct_chan_t ;
struct TYPE_8__ {scalar_t__ type; int port; } ;


 scalar_t__ B_TAU_G703 ;
 int CMD_TX_ENABLE ;
 int DCR_ABORT ;
 int DIR_CHAIN_BOFE ;
 int DIR_CHAIN_COFE ;
 int DIR_EOTE ;
 int GERR (int ) ;
 int GLDR (int ) ;
 int IE0_TX_INTE ;
 int IE0_TX_RDYE ;
 int IE1_HDLC_UDRNE ;
 int IER0 (int ) ;
 int IER0_TX_INTE_0 ;
 int IER0_TX_INTE_1 ;
 int IER0_TX_RDYE_0 ;
 int IER0_TX_RDYE_1 ;
 int IER1 (int ) ;
 int IER1_TX_DMERE_0 ;
 int IER1_TX_DMERE_1 ;
 int IER1_TX_DME_0 ;
 int IER1_TX_DME_1 ;
 scalar_t__ M_ASYNC ;
 int inb (int ) ;
 int outb (int ,int) ;
 int outw (int ,unsigned short) ;

void ct_start_transmitter (ct_chan_t *c, int dma, unsigned long buf,
 unsigned len, unsigned long desc, unsigned long lim)
{
 int ier0 = inb (IER0(c->board->port));
 int ier1 = inb (IER1(c->board->port));
 int ie0 = inb (c->IE0);
 int ie1 = inb (c->IE1);


 if (c->mode != M_ASYNC) {
  ier0 |= c->num ? IER0_TX_INTE_1 : IER0_TX_INTE_0;
  ie0 |= IE0_TX_INTE;
  ie1 |= IE1_HDLC_UDRNE;
 }
 if (dma)
  ier1 |= c->num ? (IER1_TX_DMERE_1 | IER1_TX_DME_1) :
   (IER1_TX_DMERE_0 | IER1_TX_DME_0);
 else {
  ier0 |= c->num ? IER0_TX_RDYE_1 : IER0_TX_RDYE_0;
  ie0 |= IE0_TX_RDYE;
 }


 outb (IER0(c->board->port), ier0);
 outb (IER1(c->board->port), ier1);
 outb (c->IE0, ie0);
 outb (c->IE1, ie1);



 outb (c->TRC0, dma ? c->opt.dma_trc0 : c->opt.pio_trc0);
 outb (c->TRC1, dma ? c->opt.dma_trc1 : c->opt.pio_trc1);


 if (dma) {
  outb (c->TX.DCR, DCR_ABORT);
  if (c->mode == M_ASYNC) {

   outb (c->TX.SARB, (unsigned char) (buf >> 16));
   outw (c->TX.SAR, (unsigned short) buf);
   outw (c->TX.BCR, len);
   outb (c->TX.DIR, DIR_EOTE);
  } else {

   outb (c->TX.SARB, (unsigned char) (desc >> 16));
   outw (c->TX.EDA, (unsigned short) lim);
   outw (c->TX.CDA, (unsigned short) desc);
   outb (c->TX.DIR, DIR_CHAIN_BOFE |
    DIR_CHAIN_COFE);
  }

 }
 outb (c->CMD, CMD_TX_ENABLE);


 if (c->board->type == B_TAU_G703) {
  outb (GERR(c->board->port), 0xff);
  outb (GLDR(c->board->port), 0xff);
 }
}
