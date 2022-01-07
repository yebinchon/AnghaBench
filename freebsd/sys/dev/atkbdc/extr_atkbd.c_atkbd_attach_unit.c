
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_13__ {int (* probe ) (int,int*,int) ;int (* init ) (int,TYPE_1__**,int*,int) ;int (* diag ) (TYPE_1__*,scalar_t__) ;int (* enable ) (TYPE_1__*) ;} ;
typedef TYPE_2__ keyboard_switch_t ;
typedef int device_t ;
struct TYPE_14__ {int ks_timer; } ;
typedef TYPE_3__ atkbd_state_t ;


 int ATKBD_DRIVER_NAME ;
 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,TYPE_1__*,int ) ;
 int SHUTDOWN_PRI_DEFAULT ;
 int atkbd_shutdown_final ;
 int atkbd_timeout (TYPE_1__*) ;
 scalar_t__ bootverbose ;
 int callout_init (int *,int ) ;
 int device_get_parent (int ) ;
 int device_get_unit (int ) ;
 int kbd_attach (TYPE_1__*) ;
 TYPE_2__* kbd_get_switch (int ) ;
 int shutdown_final ;
 int stub1 (int,int*,int) ;
 int stub2 (int,TYPE_1__**,int*,int) ;
 int stub3 (TYPE_1__*) ;
 int stub4 (TYPE_1__*,scalar_t__) ;

int
atkbd_attach_unit(device_t dev, keyboard_t **kbd, int irq, int flags)
{
 keyboard_switch_t *sw;
 atkbd_state_t *state;
 int args[2];
 int error;
 int unit;

 sw = kbd_get_switch(ATKBD_DRIVER_NAME);
 if (sw == ((void*)0))
  return ENXIO;


 unit = device_get_unit(dev);
 args[0] = device_get_unit(device_get_parent(dev));
 args[1] = irq;
 *kbd = ((void*)0);
 error = (*sw->probe)(unit, args, flags);
 if (error)
  return error;
 error = (*sw->init)(unit, kbd, args, flags);
 if (error)
  return error;
 (*sw->enable)(*kbd);
 state = (atkbd_state_t *)(*kbd)->kb_data;
 callout_init(&state->ks_timer, 0);
 atkbd_timeout(*kbd);

 if (bootverbose)
  (*sw->diag)(*kbd, bootverbose);

 EVENTHANDLER_REGISTER(shutdown_final, atkbd_shutdown_final, *kbd,
     SHUTDOWN_PRI_DEFAULT);

 return 0;
}
