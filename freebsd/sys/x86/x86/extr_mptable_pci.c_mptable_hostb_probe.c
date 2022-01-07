
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 scalar_t__ mptable_pci_probe_table (int ) ;
 scalar_t__ pci_cfgregopen () ;
 int pcib_get_bus (int ) ;

__attribute__((used)) static int
mptable_hostb_probe(device_t dev)
{

 if (pci_cfgregopen() == 0)
  return (ENXIO);
 if (mptable_pci_probe_table(pcib_get_bus(dev)) != 0)
  return (ENXIO);
 device_set_desc(dev, "MPTable Host-PCI bridge");
 return (0);
}
