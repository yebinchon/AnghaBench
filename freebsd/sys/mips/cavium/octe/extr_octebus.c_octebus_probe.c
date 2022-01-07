
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 scalar_t__ device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
octebus_probe(device_t dev)
{
 if (device_get_unit(dev) != 0)
  return (ENXIO);
 device_set_desc(dev, "Cavium Octeon Ethernet pseudo-bus");
 return (0);
}
