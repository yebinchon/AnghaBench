
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_is_compatible (int ,char*) ;

__attribute__((used)) static int
opalflash_probe(device_t dev)
{
 if (!ofw_bus_is_compatible(dev, "ibm,opal-flash"))
  return (ENXIO);

 device_set_desc(dev, "OPAL System Flash");

 return (BUS_PROBE_GENERIC);
}
