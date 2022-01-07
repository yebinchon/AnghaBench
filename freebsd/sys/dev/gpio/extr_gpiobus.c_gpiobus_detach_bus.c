
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_detach (int ) ;
 int device_delete_children (int ) ;
 int ofw_gpiobus_unregister_provider (int ) ;

int
gpiobus_detach_bus(device_t dev)
{
 int err;




 err = bus_generic_detach(dev);
 if (err != 0)
  return (err);

 return (device_delete_children(dev));
}
