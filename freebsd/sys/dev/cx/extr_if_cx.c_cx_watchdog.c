
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int chan; scalar_t__ running; } ;
typedef TYPE_1__ drv_t ;


 int CX_DEBUG (TYPE_1__*,char*) ;
 int cx_set_dtr (int ,int) ;
 int cx_set_rts (int ,int) ;
 int cx_setup_chan (int ) ;
 int cx_start (TYPE_1__*) ;
 int cx_start_chan (int ,int ,int ) ;

__attribute__((used)) static void cx_watchdog (drv_t *d)
{

 CX_DEBUG (d, ("device timeout\n"));
 if (d->running) {
  cx_setup_chan (d->chan);
  cx_start_chan (d->chan, 0, 0);
  cx_set_dtr (d->chan, 1);
  cx_set_rts (d->chan, 1);
  cx_start (d);
 }
}
