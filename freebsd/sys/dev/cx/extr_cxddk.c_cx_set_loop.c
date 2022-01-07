
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int llm; } ;
struct TYPE_7__ {TYPE_1__ tcor; } ;
struct TYPE_8__ {int txbaud; TYPE_2__ opt; } ;
typedef TYPE_3__ cx_chan_t ;


 int cx_set_baud (TYPE_3__*,int ) ;

void cx_set_loop (cx_chan_t *c, int on)
{
 if (! c->txbaud)
  return;

 c->opt.tcor.llm = on ? 1 : 0;
 cx_set_baud (c, c->txbaud);
}
