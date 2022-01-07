
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ mode; TYPE_3__* board; scalar_t__ num; } ;
typedef TYPE_2__ ct_chan_t ;
struct TYPE_6__ {int clk1; int clk0; } ;
struct TYPE_8__ {TYPE_1__ opt; } ;


 scalar_t__ M_E1 ;
 scalar_t__ M_G703 ;
 int ct_setup_e1 (TYPE_3__*) ;
 int ct_setup_g703 (TYPE_3__*) ;

int ct_set_clk (ct_chan_t *c, int clk)
{
 if (c->num)
  c->board->opt.clk1 = clk;
 else
  c->board->opt.clk0 = clk;
 if (c->mode == M_E1) {
  ct_setup_e1 (c->board);
  return 0;
 } else if (c->mode == M_G703) {
  ct_setup_g703 (c->board);
  return 0;
 } else
  return -1;
}
