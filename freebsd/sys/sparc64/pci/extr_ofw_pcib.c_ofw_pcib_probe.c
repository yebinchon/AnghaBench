
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int desc ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ ISDTYPE (char const*,int ) ;
 int OFW_TYPE_PCIE ;
 scalar_t__ PCIC_BRIDGE ;
 scalar_t__ PCIS_BRIDGE_PCI ;
 int device_get_parent (int ) ;
 int device_set_desc_copy (int ,char*) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 char* ofw_bus_get_type (int ) ;
 scalar_t__ pci_get_class (int ) ;
 scalar_t__ pci_get_subclass (int ) ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static int
ofw_pcib_probe(device_t dev)
{
 char desc[sizeof("OFW PCIe-PCIe bridge")];
 const char *dtype, *pbdtype;




 if ((pci_get_class(dev) == PCIC_BRIDGE) &&
     (pci_get_subclass(dev) == PCIS_BRIDGE_PCI) &&
     ofw_bus_get_node(dev) != 0) {
  dtype = ofw_bus_get_type(dev);
  pbdtype = ofw_bus_get_type(device_get_parent(
      device_get_parent(dev)));
  snprintf(desc, sizeof(desc), "OFW PCI%s-PCI%s bridge",
      (((pbdtype) != ((void*)0)) && strcmp((pbdtype), (OFW_TYPE_PCIE)) == 0) ? "e" : "",
      (((dtype) != ((void*)0)) && strcmp((dtype), (OFW_TYPE_PCIE)) == 0) ? "e" : "");
  device_set_desc_copy(dev, desc);
  return (BUS_PROBE_DEFAULT);
 }



 return (ENXIO);
}
