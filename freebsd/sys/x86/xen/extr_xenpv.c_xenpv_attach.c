
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;

__attribute__((used)) static int
xenpv_attach(device_t dev)
{
 int error;






 error = bus_generic_probe(dev);
 if (error)
  return (error);

 error = bus_generic_attach(dev);

 return (error);
}
