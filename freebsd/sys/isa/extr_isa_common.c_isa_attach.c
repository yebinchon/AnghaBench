
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int isa_bus_device ;

__attribute__((used)) static int
isa_attach(device_t dev)
{



 isa_bus_device = dev;
 return (0);
}
