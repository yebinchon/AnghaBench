
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_get_parent (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
fwe_probe(device_t dev)
{
 device_t pa;

 pa = device_get_parent(dev);
 if (device_get_unit(dev) != device_get_unit(pa)) {
  return (ENXIO);
 }

 device_set_desc(dev, "Ethernet over FireWire");
 return (0);
}
