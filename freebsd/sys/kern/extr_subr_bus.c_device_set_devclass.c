
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
typedef int devclass_t ;
struct TYPE_5__ {scalar_t__ devclass; } ;


 int EINVAL ;
 int ENOMEM ;
 int TRUE ;
 int bus_data_generation_update () ;
 int devclass_add_device (int ,TYPE_1__*) ;
 int devclass_delete_device (scalar_t__,TYPE_1__*) ;
 int devclass_find_internal (char const*,int *,int ) ;
 int printf (char*) ;

int
device_set_devclass(device_t dev, const char *classname)
{
 devclass_t dc;
 int error;

 if (!classname) {
  if (dev->devclass)
   devclass_delete_device(dev->devclass, dev);
  return (0);
 }

 if (dev->devclass) {
  printf("device_set_devclass: device class already set\n");
  return (EINVAL);
 }

 dc = devclass_find_internal(classname, ((void*)0), TRUE);
 if (!dc)
  return (ENOMEM);

 error = devclass_add_device(dc, dev);

 bus_data_generation_update();
 return (error);
}
