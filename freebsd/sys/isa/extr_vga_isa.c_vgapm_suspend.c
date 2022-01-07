
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int bus_generic_suspend (int *) ;
 int * devclass_get_device (int ,int ) ;
 int isavga_devclass ;
 int vga_suspend (int *) ;

__attribute__((used)) static int
vgapm_suspend(device_t dev)
{
 device_t vga_dev;
 int error;

 error = bus_generic_suspend(dev);
 if (error != 0)
  return (error);
 vga_dev = devclass_get_device(isavga_devclass, 0);
 if (vga_dev == ((void*)0))
  return (0);
 vga_suspend(vga_dev);

 return (0);
}
