
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 scalar_t__ PCIC_BRIDGE ;
 int PCIR_SECBUS_1 ;
 scalar_t__ PCIS_BRIDGE_PCI ;
 int device_set_desc (int ,char*) ;
 scalar_t__ mptable_pci_probe_table (int) ;
 scalar_t__ pci_get_class (int ) ;
 scalar_t__ pci_get_subclass (int ) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static int
mptable_pcib_probe(device_t dev)
{
 int bus;

 if ((pci_get_class(dev) != PCIC_BRIDGE) ||
     (pci_get_subclass(dev) != PCIS_BRIDGE_PCI))
  return (ENXIO);
 bus = pci_read_config(dev, PCIR_SECBUS_1, 1);
 if (bus == 0)
  return (ENXIO);
 if (mptable_pci_probe_table(bus) != 0)
  return (ENXIO);
 device_set_desc(dev, "MPTable PCI-PCI bridge");
 return (-1000);
}
