
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char const*) ;
 scalar_t__ ipmi_attached ;
 char* ipmi_pci_match (int ,int ) ;
 int pci_get_device (int ) ;
 int pci_get_vendor (int ) ;

__attribute__((used)) static int
ipmi_pci_probe(device_t dev)
{
 const char *desc;

 if (ipmi_attached)
  return (ENXIO);

 desc = ipmi_pci_match(pci_get_vendor(dev), pci_get_device(dev));
 if (desc != ((void*)0)) {
  device_set_desc(dev, desc);
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
