
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* call_on_msig ) (TYPE_1__*) ;} ;
typedef TYPE_1__ cx_chan_t ;



void cx_register_modem (cx_chan_t *c, void (*func) (cx_chan_t *c))
{
 c->call_on_msig = func;
}
