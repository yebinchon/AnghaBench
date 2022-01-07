
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int chan; scalar_t__ running; } ;
typedef TYPE_1__ drv_t ;


 int CT_DEBUG (TYPE_1__*,char*) ;
 int ct_set_dtr (int ,int) ;
 int ct_set_rts (int ,int) ;
 int ct_setup_chan (int ) ;
 int ct_start (TYPE_1__*) ;
 int ct_start_chan (int ,int ,int ) ;

__attribute__((used)) static void ct_watchdog (drv_t *d)
{

 CT_DEBUG (d, ("device timeout\n"));
 if (d->running) {
  ct_setup_chan (d->chan);
  ct_start_chan (d->chan, 0, 0);
  ct_set_dtr (d->chan, 1);
  ct_set_rts (d->chan, 1);
  ct_start (d);
 }
}
