
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
generic_pcie_fdt_probe(device_t dev)
{

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (ofw_bus_is_compatible(dev, "pci-host-ecam-generic")) {
  device_set_desc(dev, "Generic PCI host controller");
  return (BUS_PROBE_GENERIC);
 }
 if (ofw_bus_is_compatible(dev, "arm,gem5_pcie")) {
  device_set_desc(dev, "GEM5 PCIe host controller");
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
