
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; int hopt; int aopt; int opt; int txbaud; int rxbaud; void* mode; } ;
typedef TYPE_1__ cx_chan_t ;
struct TYPE_7__ {scalar_t__ fast; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__* chan; int if8type; int if0type; int bcr0; TYPE_4__ opt; } ;
typedef TYPE_2__ cx_board_t ;


 int BCR02X_FAST ;
 scalar_t__ B_SIGMA_2X ;
 void* M_ASYNC ;
 int NCHAN ;
 TYPE_4__ board_opt_dflt ;
 int chan_opt_dflt ;
 int cx_iftype ;
 int cx_rxbaud ;
 void* cx_sync_mode ;
 int cx_txbaud ;
 void* cx_univ_mode ;
 int opt_async_dflt ;
 int opt_hdlc_dflt ;

void cx_reinit_board (cx_board_t *b)
{
 cx_chan_t *c;

 b->opt = board_opt_dflt;
 if (b->type == B_SIGMA_2X) {
  b->bcr0 &= ~BCR02X_FAST;
  if (b->opt.fast)
   b->bcr0 |= BCR02X_FAST;
 } else
  b->if0type = b->if8type = cx_iftype;
 for (c=b->chan; c<b->chan+NCHAN; ++c) {
  switch (c->type) {
  default:
  case 135:
   continue;
  case 131:
  case 130:
  case 129:
  case 128:
   c->mode = (cx_univ_mode == M_ASYNC) ?
    M_ASYNC : cx_sync_mode;
   break;
  case 134:
  case 132:
  case 133:
   c->mode = cx_sync_mode;
   break;
  case 136:
   c->mode = M_ASYNC;
   break;
  }
  c->rxbaud = cx_rxbaud;
  c->txbaud = cx_txbaud;
  c->opt = chan_opt_dflt;
  c->aopt = opt_async_dflt;
  c->hopt = opt_hdlc_dflt;
 }
}
