
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;

__attribute__((used)) static int
opal_i2cm_probe(device_t dev)
{

 if (!(ofw_bus_is_compatible(dev, "ibm,centaur-i2cm") ||
     ofw_bus_is_compatible(dev, "ibm,power8-i2cm")))
  return (ENXIO);

 device_set_desc(dev, "centaur-i2cm");
 return (0);
}
