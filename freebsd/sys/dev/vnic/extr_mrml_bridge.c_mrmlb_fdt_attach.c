
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_attach (int ) ;
 int mrmlb_ofw_bus_attach (int ) ;

__attribute__((used)) static int
mrmlb_fdt_attach(device_t dev)
{
 int err;

 err = mrmlb_ofw_bus_attach(dev);
 if (err != 0)
  return (err);

 return (bus_generic_attach(dev));
}
