
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int FFMAN_DEVSTR ;
 int device_set_desc (int ,int ) ;
 int ofw_bus_is_compatible (int ,char*) ;

__attribute__((used)) static int
fman_fdt_probe(device_t dev)
{

 if (!ofw_bus_is_compatible(dev, "fsl,fman"))
  return (ENXIO);

 device_set_desc(dev, FFMAN_DEVSTR);

 return (BUS_PROBE_DEFAULT);
}
