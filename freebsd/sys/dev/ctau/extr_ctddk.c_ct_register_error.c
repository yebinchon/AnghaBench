
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void (* call_on_err ) (TYPE_1__*,int) ;} ;
typedef TYPE_1__ ct_chan_t ;



void ct_register_error (ct_chan_t *c, void (*func) (ct_chan_t*, int))
{
 c->call_on_err = func;
}
