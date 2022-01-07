
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_suspend (int ) ;
 int vga_suspend (int ) ;

__attribute__((used)) static int
isavga_suspend(device_t dev)
{
 int error;

 error = bus_generic_suspend(dev);
 if (error != 0)
  return (error);
 vga_suspend(dev);

 return (error);
}
