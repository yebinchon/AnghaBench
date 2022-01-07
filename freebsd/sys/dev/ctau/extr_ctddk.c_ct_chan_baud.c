
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int txs; } ;
struct TYPE_7__ {unsigned long baud; TYPE_1__ hopt; } ;
typedef TYPE_2__ ct_chan_t ;


 int CLK_INT ;
 int CLK_LINE ;
 int ct_set_dpll (TYPE_2__*,int ) ;
 int ct_update_chan (TYPE_2__*) ;

__attribute__((used)) static void ct_chan_baud (ct_chan_t *c, unsigned long baud)
{
 c->baud = baud;
 if (baud) {
  c->hopt.txs = CLK_INT;
 } else {
  ct_set_dpll (c, 0);
  c->hopt.txs = CLK_LINE;
 }
 ct_update_chan (c);
}
