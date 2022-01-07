
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int timeout_handle; scalar_t__ running; int chan; } ;
typedef TYPE_1__ drv_t ;


 int CX_DEBUG (TYPE_1__*,char*) ;
 int callout_stop (int *) ;
 int cx_set_dtr (int ,int ) ;
 int cx_set_rts (int ,int ) ;
 int splhigh () ;
 int splx (int) ;

__attribute__((used)) static void cx_down (drv_t *d)
{
 int s = splhigh ();
 CX_DEBUG (d, ("cx_down\n"));
 cx_set_dtr (d->chan, 0);
 cx_set_rts (d->chan, 0);
 d->running = 0;
 callout_stop (&d->timeout_handle);
 splx (s);
}
