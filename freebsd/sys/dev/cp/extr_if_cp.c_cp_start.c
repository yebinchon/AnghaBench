
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int timeout_handle; TYPE_3__* chan; scalar_t__ running; } ;
typedef TYPE_1__ drv_t ;
struct TYPE_8__ {int rts; int dtr; } ;


 int callout_reset (int *,int ,int ,TYPE_1__*) ;
 int cp_send (TYPE_1__*) ;
 int cp_set_dtr (TYPE_3__*,int) ;
 int cp_set_rts (TYPE_3__*,int) ;
 int cp_watchdog_timer ;
 int hz ;

__attribute__((used)) static void cp_start (drv_t *d)
{
 if (d->running) {
  if (! d->chan->dtr)
   cp_set_dtr (d->chan, 1);
  if (! d->chan->rts)
   cp_set_rts (d->chan, 1);
  cp_send (d);
  callout_reset (&d->timeout_handle, hz, cp_watchdog_timer, d);
 }
}
