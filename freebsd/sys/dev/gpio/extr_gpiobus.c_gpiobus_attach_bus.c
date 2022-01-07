
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int bus_generic_attach (int *) ;
 int * device_add_child (int *,char*,int) ;
 int device_delete_child (int *,int *) ;
 int ofw_gpiobus_register_provider (int *) ;

device_t
gpiobus_attach_bus(device_t dev)
{
 device_t busdev;

 busdev = device_add_child(dev, "gpiobus", -1);
 if (busdev == ((void*)0))
  return (((void*)0));
 if (device_add_child(dev, "gpioc", -1) == ((void*)0)) {
  device_delete_child(dev, busdev);
  return (((void*)0));
 }



 bus_generic_attach(dev);

 return (busdev);
}
