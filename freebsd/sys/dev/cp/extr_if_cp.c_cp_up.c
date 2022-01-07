
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int running; int chan; } ;
typedef TYPE_1__ drv_t ;


 int CP_DEBUG (TYPE_1__*,char*) ;
 int cp_set_dtr (int ,int) ;
 int cp_set_rts (int ,int) ;

__attribute__((used)) static void cp_up (drv_t *d)
{
 CP_DEBUG (d, ("cp_up\n"));
 cp_set_dtr (d->chan, 1);
 cp_set_rts (d->chan, 1);
 d->running = 1;
}
