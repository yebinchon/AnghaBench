
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; int port; int received_data; int received_len; int (* call_on_rx ) (TYPE_1__*,int ,int ) ;int (* call_on_msig ) (TYPE_1__*) ;int mintr; } ;
typedef TYPE_1__ cx_chan_t ;
struct TYPE_9__ {TYPE_1__* chan; int port; } ;
typedef TYPE_2__ cx_board_t ;


 int BRD_INTR_LEVEL ;
 int BSR (int ) ;
 int BSR_NOINTR ;
 int IACK (int ,int ) ;




 int MEOIR (int ) ;
 int REOIR (int ) ;
 int TEOIR (int ) ;
 scalar_t__ T_NONE ;
 int cx_receive_interrupt (TYPE_1__*) ;
 int cx_transmit_interrupt (TYPE_1__*) ;
 unsigned char inb (int ) ;
 int inw (int ) ;
 int outb (int ,int ) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*,int ,int ) ;

void cx_int_handler (cx_board_t *b)
{
 unsigned char livr;
 cx_chan_t *c;

 while (! (inw (BSR(b->port)) & BSR_NOINTR)) {


  livr = inb (IACK(b->port, BRD_INTR_LEVEL));
  c = b->chan + (livr>>2 & 0xf);
  if (c->type == T_NONE)
   continue;
  switch (livr & 3) {
  case 130:
   ++c->mintr;
   if (c->call_on_msig)
    c->call_on_msig (c);
   outb (MEOIR(c->port), 0);
   break;
  case 131:
  case 129:
   outb (REOIR(c->port), cx_receive_interrupt (c));
   if (c->call_on_rx && c->received_data) {
    c->call_on_rx (c, c->received_data,
     c->received_len);
    c->received_data = 0;
   }
   break;
  case 128:
   cx_transmit_interrupt (c);
   outb (TEOIR(c->port), 0);
   break;
  }
 }
}
