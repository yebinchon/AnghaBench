
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_detach (int ) ;
 int device_printf (int ,char*) ;
 int intsmb_release_resources (int ) ;

__attribute__((used)) static int
intsmb_detach(device_t dev)
{
 int error;

 error = bus_generic_detach(dev);
 if (error) {
  device_printf(dev, "bus detach failed\n");
  return (error);
 }

 intsmb_release_resources(dev);
 return (0);
}
