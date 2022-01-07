
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int baud; int mode; int gopt; int hopt; int opt; } ;
typedef TYPE_1__ ct_chan_t ;
struct TYPE_6__ {TYPE_1__* chan; int opt; } ;
typedef TYPE_2__ ct_board_t ;


 int NCHAN ;
 int ct_baud ;
 int ct_board_opt_dflt ;
 int ct_chan_mode ;
 int ct_chan_opt_dflt ;
 int ct_opt_g703_dflt ;
 int ct_opt_hdlc_dflt ;
 int ct_reinit_chan (TYPE_1__*) ;

void ct_reinit_board (ct_board_t *b)
{
 ct_chan_t *c;

 b->opt = ct_board_opt_dflt;
 for (c=b->chan; c<b->chan+NCHAN; ++c) {
  c->opt = ct_chan_opt_dflt;
  c->hopt = ct_opt_hdlc_dflt;
  c->gopt = ct_opt_g703_dflt;
  c->mode = ct_chan_mode;
  c->baud = ct_baud;

  ct_reinit_chan (c);
 }
}
