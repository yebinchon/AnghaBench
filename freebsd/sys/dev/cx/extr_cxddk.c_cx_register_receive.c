
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* call_on_rx ) (TYPE_1__*,char*,int) ;} ;
typedef TYPE_1__ cx_chan_t ;



void cx_register_receive (cx_chan_t *c,
 void (*func) (cx_chan_t *c, char *data, int len))
{
 c->call_on_rx = func;
}
