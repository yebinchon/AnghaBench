
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_pci_controller {int dummy; } ;
typedef int device_t ;


 int BUS_PROBE_LOW_PRIORITY ;
 int ENXIO ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
imx_ata_probe(device_t dev)
{
 struct ata_pci_controller *ctrl;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (!ofw_bus_is_compatible(dev, "fsl,imx51-ata") &&
     !ofw_bus_is_compatible(dev, "fsl,imx53-ata"))
  return (ENXIO);

 ctrl = device_get_softc(dev);

 device_set_desc(dev, "Freescale Integrated PATA Controller");
 return (BUS_PROBE_LOW_PRIORITY);
}
