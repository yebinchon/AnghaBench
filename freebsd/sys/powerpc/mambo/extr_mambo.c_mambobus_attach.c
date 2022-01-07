
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;

__attribute__((used)) static int
mambobus_attach(device_t dev)
{
 bus_generic_probe(dev);
 return (bus_generic_attach(dev));
}
