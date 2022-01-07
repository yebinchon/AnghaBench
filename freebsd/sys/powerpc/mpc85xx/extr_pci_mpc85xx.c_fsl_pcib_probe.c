
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int * ofw_bus_get_type (int ) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static int
fsl_pcib_probe(device_t dev)
{

 if (ofw_bus_get_type(dev) == ((void*)0) ||
     strcmp(ofw_bus_get_type(dev), "pci") != 0)
  return (ENXIO);

 if (!(ofw_bus_is_compatible(dev, "fsl,mpc8540-pci") ||
     ofw_bus_is_compatible(dev, "fsl,mpc8540-pcie") ||
     ofw_bus_is_compatible(dev, "fsl,mpc8548-pcie") ||
     ofw_bus_is_compatible(dev, "fsl,p5020-pcie") ||
     ofw_bus_is_compatible(dev, "fsl,qoriq-pcie-v2.2") ||
     ofw_bus_is_compatible(dev, "fsl,qoriq-pcie")))
  return (ENXIO);

 device_set_desc(dev, "Freescale Integrated PCI/PCI-E Controller");
 return (BUS_PROBE_DEFAULT);
}
