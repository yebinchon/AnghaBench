
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int loop; } ;
struct TYPE_10__ {TYPE_2__ md2; } ;
struct TYPE_11__ {scalar_t__ mode; int lx; TYPE_3__ opt; int MD2; TYPE_1__* board; int TXS; int RXS; scalar_t__ num; } ;
typedef TYPE_4__ ct_chan_t ;
struct TYPE_8__ {int bcr1; int port; } ;


 int BCR1 (int ) ;
 int BCR1_TXCOUT0 ;
 int BCR1_TXCOUT1 ;
 int CCR2_LLOOP ;
 unsigned char CLK_INT ;
 unsigned char CLK_MASK ;
 int DS_CCR2 ;
 int DS_LICR ;
 unsigned short E1CS0 (int ) ;
 unsigned short E1CS1 (int ) ;
 int LICR_JA_TX ;
 int LX_CCR1 ;
 int LX_HDB3 ;
 int LX_LLOOP ;
 int LX_LOS ;
 int MD2_LLOOP ;
 scalar_t__ M_E1 ;
 scalar_t__ M_G703 ;
 scalar_t__ M_HDLC ;
 scalar_t__ ct_get_baud (TYPE_4__*) ;
 int cte_in (unsigned short,int ) ;
 int cte_out (unsigned short,int ,int) ;
 int ctg_outx (TYPE_4__*,int ,int) ;
 unsigned char inb (int ) ;
 int outb (int ,unsigned char) ;

__attribute__((used)) static void ct_enable_loop (ct_chan_t *c)
{
 if (c->mode == M_E1) {
  unsigned short p = c->num ? E1CS1 (c->board->port) :
         E1CS0 (c->board->port);


  cte_out (p, DS_CCR2, cte_in (p, DS_CCR2) | CCR2_LLOOP);


  cte_out (p, DS_LICR, cte_in (p, DS_LICR) | LICR_JA_TX);
  return;
 } else if (c->mode == M_G703) {
  c->lx = LX_LOS | LX_HDB3;
  ctg_outx (c, LX_CCR1, c->lx |= LX_LLOOP);
  return;
 } else if (c->mode == M_HDLC && ct_get_baud(c)) {
  unsigned char rxs = inb (c->RXS) & ~CLK_MASK;
  unsigned char txs = inb (c->TXS) & ~CLK_MASK;
  int txcout = c->num ? BCR1_TXCOUT1 : BCR1_TXCOUT0;
  c->opt.md2.loop = MD2_LLOOP;




  outb (BCR1(c->board->port), c->board->bcr1 & ~txcout);

  outb (c->RXS, rxs | CLK_INT);
  outb (c->TXS, txs | CLK_INT);

  c->board->bcr1 |= txcout;
  outb (BCR1(c->board->port), c->board->bcr1);

  outb (c->MD2, *(unsigned char*)&c->opt.md2);
  return;
 }
}
