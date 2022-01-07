
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int chan; scalar_t__ running; } ;
typedef TYPE_1__ drv_t ;


 int CP_DEBUG (TYPE_1__*,char*) ;
 int cp_set_dtr (int ,int) ;
 int cp_set_rts (int ,int) ;
 int cp_start (TYPE_1__*) ;
 int cp_start_chan (int ,int,int,int ,int ) ;
 int cp_start_e1 (int ) ;
 int cp_stop_chan (int ) ;
 int cp_stop_e1 (int ) ;

__attribute__((used)) static void cp_watchdog (drv_t *d)
{
 CP_DEBUG (d, ("device timeout\n"));
 if (d->running) {
  cp_stop_chan (d->chan);
  cp_stop_e1 (d->chan);
  cp_start_e1 (d->chan);
  cp_start_chan (d->chan, 1, 1, 0, 0);
  cp_set_dtr (d->chan, 1);
  cp_set_rts (d->chan, 1);
  cp_start (d);
 }
}
