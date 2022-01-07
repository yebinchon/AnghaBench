
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int DSR; } ;
struct TYPE_8__ {int DSR; } ;
struct TYPE_10__ {int lx; int FIE; int IE2; int IE1; int IE0; int CMD; TYPE_2__ TX; TYPE_1__ RX; } ;
typedef TYPE_3__ ct_chan_t ;


 int CMD_CHAN_RESET ;
 int CMD_TX_ABORT ;
 int CMD_TX_RESET ;
 int DSR_DMA_DISABLE ;
 int LX_LOS ;
 int ct_set_dtr (TYPE_3__*,int ) ;
 int ct_set_rts (TYPE_3__*,int ) ;
 int ct_update_chan (TYPE_3__*) ;
 int outb (int ,int ) ;

void ct_setup_chan (ct_chan_t *c)
{

 outb (c->RX.DSR, DSR_DMA_DISABLE);
 outb (c->TX.DSR, DSR_DMA_DISABLE);
 outb (c->CMD, CMD_TX_RESET);
 outb (c->CMD, CMD_TX_ABORT);
 outb (c->CMD, CMD_CHAN_RESET);


 outb (c->IE0, 0);
 outb (c->IE1, 0);
 outb (c->IE2, 0);
 outb (c->FIE, 0);


 ct_set_dtr (c, 0);
 ct_set_rts (c, 0);

 c->lx = LX_LOS;
 ct_update_chan (c);
}
