
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;

__attribute__((used)) static int
lbc_probe(device_t dev)
{

 if (!(ofw_bus_is_compatible(dev, "fsl,lbc") ||
     ofw_bus_is_compatible(dev, "fsl,elbc")))
  return (ENXIO);

 device_set_desc(dev, "Freescale Local Bus Controller");
 return (BUS_PROBE_DEFAULT);
}
