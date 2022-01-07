
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int bus_generic_resume (int *) ;
 int * devclass_get_device (int ,int ) ;
 int isavga_devclass ;
 int vga_resume (int *) ;

__attribute__((used)) static int
vgapm_resume(device_t dev)
{
 device_t vga_dev;

 vga_dev = devclass_get_device(isavga_devclass, 0);
 if (vga_dev != ((void*)0))
  vga_resume(vga_dev);

 return (bus_generic_resume(dev));
}
