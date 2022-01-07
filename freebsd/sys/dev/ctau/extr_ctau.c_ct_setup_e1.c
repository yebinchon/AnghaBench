
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cfg; scalar_t__ clk0; scalar_t__ clk1; } ;
struct TYPE_5__ {int e1cfg; int port; scalar_t__ chan; TYPE_1__ opt; } ;
typedef TYPE_2__ ct_board_t ;





 int E1CFG (int ) ;
 int E1CFG_CLK0_INT ;
 int E1CFG_CLK0_RCLK1 ;
 int E1CFG_CLK0_RCV ;
 int E1CFG_CLK1_INT ;
 int E1CFG_CLK1_RCLK0 ;
 int E1CFG_CLK1_RCV ;
 int E1CFG_D ;
 int E1CFG_GRUN ;
 int E1CFG_HI ;
 int E1CFG_II ;
 int E1CFG_K ;
 int E1CFG_LED ;
 scalar_t__ GCLK_RCLKO ;
 scalar_t__ GCLK_RCV ;
 int ct_setup_ctlr (scalar_t__) ;
 int ct_setup_scc (int ) ;
 int outb (int ,int ) ;

void ct_setup_e1 (ct_board_t *b)
{





 b->e1cfg &= E1CFG_LED;
 switch (b->opt.cfg){
 case 129: b->e1cfg |= E1CFG_K; break;
 case 130: b->e1cfg |= E1CFG_HI; break;
 case 128: b->e1cfg |= E1CFG_D; break;
 default: b->e1cfg |= E1CFG_II; break;
 }

 if (b->opt.clk0 == GCLK_RCV) b->e1cfg |= E1CFG_CLK0_RCV;
 if (b->opt.clk0 == GCLK_RCLKO) b->e1cfg |= E1CFG_CLK0_RCLK1;
 else b->e1cfg |= E1CFG_CLK0_INT;
 if (b->opt.clk1 == GCLK_RCV) b->e1cfg |= E1CFG_CLK1_RCV;
 if (b->opt.clk1 == GCLK_RCLKO) b->e1cfg |= E1CFG_CLK1_RCLK0;
 else b->e1cfg |= E1CFG_CLK1_INT;

 outb (E1CFG (b->port), b->e1cfg);




 ct_setup_scc (b->port);




 ct_setup_ctlr (b->chan + 0);
 ct_setup_ctlr (b->chan + 1);


 b->e1cfg |= E1CFG_GRUN;
 outb (E1CFG (b->port), b->e1cfg);
}
