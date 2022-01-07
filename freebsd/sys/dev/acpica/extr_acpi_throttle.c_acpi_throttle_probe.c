
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 scalar_t__ device_find_child (int ,char*,int) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ resource_disabled (char*,int ) ;

__attribute__((used)) static int
acpi_throttle_probe(device_t dev)
{

 if (resource_disabled("acpi_throttle", 0))
  return (ENXIO);







 if (device_find_child(device_get_parent(dev), "p4tcc", -1) &&
     !resource_disabled("p4tcc", 0))
  return (ENXIO);

 device_set_desc(dev, "ACPI CPU Throttling");
 return (0);
}
