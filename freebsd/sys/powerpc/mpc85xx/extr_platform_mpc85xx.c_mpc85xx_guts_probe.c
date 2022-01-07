
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
mpc85xx_guts_probe(device_t dev)
{
 if (!ofw_bus_is_compatible(dev, "fsl,mpc8572-guts") &&
     !ofw_bus_is_compatible(dev, "fsl,p1020-guts") &&
     !ofw_bus_is_compatible(dev, "fsl,p1021-guts") &&
     !ofw_bus_is_compatible(dev, "fsl,p1022-guts") &&
     !ofw_bus_is_compatible(dev, "fsl,p1023-guts") &&
     !ofw_bus_is_compatible(dev, "fsl,p2020-guts"))
  return (ENXIO);

 device_set_desc(dev, "MPC85xx Global Utilities");
 return (BUS_PROBE_GENERIC);
}
