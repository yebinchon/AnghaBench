
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ST3; } ;
typedef TYPE_1__ ct_chan_t ;


 int ST3_RX_ENABLED ;
 int inb (int ) ;

int ct_receive_enabled (ct_chan_t *c)
{
 int st3;

 st3 = inb (c->ST3);
 return (st3 & ST3_RX_ENABLED) ? 1 : 0;
}
