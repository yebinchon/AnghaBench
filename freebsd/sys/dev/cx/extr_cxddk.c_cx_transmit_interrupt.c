
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ mode; int obytes; int port; int opkts; int * attach; int (* call_on_tx ) (TYPE_1__*,int ,int) ;int oerrs; int (* call_on_err ) (TYPE_1__*,int ) ;int tintr; } ;
typedef TYPE_1__ cx_chan_t ;


 int ATBCNT (int ) ;
 int ATBSTS (int ) ;
 unsigned char BSTS_OWN24 ;
 int BTBCNT (int ) ;
 int BTBSTS (int ) ;
 int CX_UNDERRUN ;
 int IER (int ) ;
 int IER_RXD ;
 int IER_TXD ;
 int IER_TXMPTY ;
 scalar_t__ M_ASYNC ;
 int TISR (int ) ;
 unsigned char TIS_BB ;
 unsigned char TIS_EOBUF ;
 unsigned char TIS_TXDATA ;
 unsigned char TIS_TXEMPTY ;
 unsigned char TIS_UNDERRUN ;
 unsigned char inb (int ) ;
 int inw (int ) ;
 int outb (int ,int) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ,int) ;
 int stub3 (TYPE_1__*,int ,int) ;

__attribute__((used)) static void cx_transmit_interrupt (cx_chan_t *c)
{
 unsigned char tisr;
 int len = 0;

 ++c->tintr;
 tisr = inb (TISR(c->port));
 if (tisr & TIS_UNDERRUN) {
  if (c->call_on_err)
   c->call_on_err (c, CX_UNDERRUN);
  ++c->oerrs;
 } else if (tisr & (TIS_EOBUF | TIS_TXEMPTY | TIS_TXDATA)) {

  if (tisr & TIS_BB) {
   len = inw(BTBCNT(c->port));
   if (c->call_on_tx)
    c->call_on_tx (c, c->attach[1], len);
  } else {
   len = inw(ATBCNT(c->port));
   if (c->call_on_tx)
    c->call_on_tx (c, c->attach[0], len);
  }
  if (c->mode != M_ASYNC && len != 0)
   ++c->opkts;
  c->obytes += len;
 }



 if (c->mode != M_ASYNC) {
  if ((inb (ATBSTS(c->port)) & BSTS_OWN24) &&
     (inb (BTBSTS(c->port)) & BSTS_OWN24)) {
   outb (IER(c->port), IER_RXD | IER_TXD | IER_TXMPTY);
  } else
   outb (IER(c->port), IER_RXD | IER_TXD);
 }
}
