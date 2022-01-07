
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; int port; } ;
typedef TYPE_1__ cx_chan_t ;


 int CAR (int ) ;
 int STCR (int ) ;
 int STC_SNDSPC ;
 int STC_SSPC_1 ;
 int STC_SSPC_2 ;
 int outb (int ,int) ;

void cx_xflow_ctl (cx_chan_t *c, int on)
{
 outb (CAR(c->port), c->num & 3);
 outb (STCR(c->port), STC_SNDSPC | (on ? STC_SSPC_1 : STC_SSPC_2));
}
