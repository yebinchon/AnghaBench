
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {unsigned char cfg; } ;
struct TYPE_10__ {TYPE_1__ opt; TYPE_4__* chan; } ;
typedef TYPE_2__ ct_board_t ;
struct TYPE_11__ {int mode; } ;


 unsigned char CFG_B ;
 int M_G703 ;
 int M_HDLC ;
 int ct_chan_baud (TYPE_4__*,int ) ;
 int ct_set_invrxc (TYPE_4__*,int ) ;
 int ct_set_invtxc (TYPE_4__*,int ) ;
 int ct_set_nrzi (TYPE_4__*,int ) ;
 int ct_setup_g703 (TYPE_2__*) ;

__attribute__((used)) static void ct_g703_config (ct_board_t *b, unsigned char cfg)
{
 if (cfg == b->opt.cfg)
  return;

 if (cfg == CFG_B)
  b->chan[1].mode = M_HDLC;
 else
  b->chan[1].mode = M_G703;


 if (b->opt.cfg == CFG_B) {
  ct_chan_baud (b->chan+1, 0);
  ct_set_invtxc (b->chan+1, 0);
  ct_set_invrxc (b->chan+1, 0);
  ct_set_nrzi (b->chan+1, 0);
 }
 b->opt.cfg = cfg;
 ct_setup_g703 (b);
}
