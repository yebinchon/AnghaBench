
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int running; int chan; } ;
typedef TYPE_1__ drv_t ;


 int CX_DEBUG (TYPE_1__*,char*) ;
 int cx_set_dtr (int ,int) ;
 int cx_set_rts (int ,int) ;
 int splhigh () ;
 int splx (int) ;

__attribute__((used)) static void cx_up (drv_t *d)
{
 int s = splhigh ();
 CX_DEBUG (d, ("cx_up\n"));
 cx_set_dtr (d->chan, 1);
 cx_set_rts (d->chan, 1);
 d->running = 1;
 splx (s);
}
