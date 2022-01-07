
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* board; scalar_t__ num; int CMD; int IE0; int IE1; int * rdphys; int * rphys; scalar_t__ rn; int ST3; } ;
typedef TYPE_2__ ct_chan_t ;
struct TYPE_6__ {int port; } ;


 unsigned char CMD_RX_DISABLE ;
 int DMABUFSZ ;
 unsigned char IE0_RX_INTE ;
 unsigned char IE1_CDCDE ;
 int IER0 (int ) ;
 unsigned char IER0_RX_INTE_0 ;
 unsigned char IER0_RX_INTE_1 ;
 unsigned char IER0_RX_RDYE_0 ;
 unsigned char IER0_RX_RDYE_1 ;
 int IER1 (int ) ;
 unsigned char IER1_RX_DMERE_0 ;
 unsigned char IER1_RX_DMERE_1 ;
 unsigned char IER1_RX_DME_0 ;
 unsigned char IER1_RX_DME_1 ;
 int NBUF ;
 unsigned char ST3_RX_ENABLED ;
 int ct_set_rts (TYPE_2__*,int) ;
 int ct_start_receiver (TYPE_2__*,int,int ,int ,int ,int ) ;
 unsigned char inb (int ) ;
 int outb (int ,unsigned char) ;

void ct_enable_receive (ct_chan_t *c, int on)
{
 unsigned char st3, ier0, ier1;

 st3 = inb (c->ST3);

 if (on && ! (st3 & ST3_RX_ENABLED)) {
  c->rn = 0;
  ct_start_receiver (c, 1 , c->rphys[0], DMABUFSZ, c->rdphys[0],
   c->rdphys[NBUF-1]);

  outb (c->IE1, inb (c->IE1) | IE1_CDCDE);
  outb (c->IE0, inb (c->IE0) | IE0_RX_INTE);
  ier0 = inb (IER0(c->board->port));
  ier0 |= c->num ? IER0_RX_INTE_1 : IER0_RX_INTE_0;
  outb (IER0(c->board->port), ier0);
  ct_set_rts (c, 1);
 } else if (! on && (st3 & ST3_RX_ENABLED)) {
  ct_set_rts (c, 0);
  outb (c->CMD, CMD_RX_DISABLE);

  ier0 = inb (IER0(c->board->port));
  ier0 &= c->num ? ~(IER0_RX_INTE_1 | IER0_RX_RDYE_1) :
   ~(IER0_RX_INTE_0 | IER0_RX_RDYE_0);
  outb (IER0(c->board->port), ier0);

  ier1 = inb (IER1(c->board->port));
  ier1 &= c->num ? ~(IER1_RX_DMERE_1 | IER1_RX_DME_1) :
   ~(IER1_RX_DMERE_0 | IER1_RX_DME_0);
  outb (IER1(c->board->port), ier1);
 }

}
