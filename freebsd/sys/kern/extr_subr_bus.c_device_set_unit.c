
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
typedef TYPE_2__* devclass_t ;
struct TYPE_11__ {int maxunit; scalar_t__* devices; } ;
struct TYPE_10__ {int unit; } ;


 int EBUSY ;
 int bus_data_generation_update () ;
 int devclass_add_device (TYPE_2__*,TYPE_1__*) ;
 int devclass_delete_device (TYPE_2__*,TYPE_1__*) ;
 TYPE_2__* device_get_devclass (TYPE_1__*) ;

int
device_set_unit(device_t dev, int unit)
{
 devclass_t dc;
 int err;

 dc = device_get_devclass(dev);
 if (unit < dc->maxunit && dc->devices[unit])
  return (EBUSY);
 err = devclass_delete_device(dc, dev);
 if (err)
  return (err);
 dev->unit = unit;
 err = devclass_add_device(dc, dev);
 if (err)
  return (err);

 bus_data_generation_update();
 return (0);
}
