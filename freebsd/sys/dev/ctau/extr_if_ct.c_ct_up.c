
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int running; int chan; } ;
typedef TYPE_1__ drv_t ;


 int CT_DEBUG (TYPE_1__*,char*) ;
 int ct_set_dtr (int ,int) ;
 int ct_set_rts (int ,int) ;
 int splimp () ;
 int splx (int) ;

__attribute__((used)) static void ct_up (drv_t *d)
{
 int s = splimp ();
 CT_DEBUG (d, ("ct_up\n"));
 ct_set_dtr (d->chan, 1);
 ct_set_rts (d->chan, 1);
 d->running = 1;
 splx (s);
}
