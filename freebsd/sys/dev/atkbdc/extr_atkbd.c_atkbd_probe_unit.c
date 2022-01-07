
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* probe ) (int,int*,int) ;} ;
typedef TYPE_1__ keyboard_switch_t ;
typedef int device_t ;


 int ATKBD_DRIVER_NAME ;
 int ENXIO ;
 int device_get_parent (int ) ;
 int device_get_unit (int ) ;
 TYPE_1__* kbd_get_switch (int ) ;
 int stub1 (int,int*,int) ;

int
atkbd_probe_unit(device_t dev, int irq, int flags)
{
 keyboard_switch_t *sw;
 int args[2];
 int error;

 sw = kbd_get_switch(ATKBD_DRIVER_NAME);
 if (sw == ((void*)0))
  return ENXIO;

 args[0] = device_get_unit(device_get_parent(dev));
 args[1] = irq;
 error = (*sw->probe)(device_get_unit(dev), args, flags);
 if (error)
  return error;
 return 0;
}
