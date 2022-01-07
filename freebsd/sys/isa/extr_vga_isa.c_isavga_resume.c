
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_resume (int ) ;
 int vga_resume (int ) ;

__attribute__((used)) static int
isavga_resume(device_t dev)
{

 vga_resume(dev);

 return (bus_generic_resume(dev));
}
