
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dcd_timeout_handle; } ;
typedef TYPE_1__ drv_t ;
struct TYPE_6__ {scalar_t__ mode; TYPE_1__* sys; } ;
typedef TYPE_2__ cx_chan_t ;


 scalar_t__ M_ASYNC ;
 int callout_reset (int *,int,int ,TYPE_1__*) ;
 int cx_carrier ;
 int hz ;

__attribute__((used)) static void cx_modem (cx_chan_t *c)
{
 drv_t *d = c->sys;

 if (!d || c->mode != M_ASYNC)
  return;



 callout_reset (&d->dcd_timeout_handle, hz/2, cx_carrier, d);
}
