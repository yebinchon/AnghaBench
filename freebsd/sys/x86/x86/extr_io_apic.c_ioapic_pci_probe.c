
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 scalar_t__ PCIC_BASEPERIPH ;


 scalar_t__ PCIS_BASEPERIPH_PIC ;
 int device_quiet (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_class (int ) ;
 int pci_get_progif (int ) ;
 scalar_t__ pci_get_subclass (int ) ;

__attribute__((used)) static int
ioapic_pci_probe(device_t dev)
{

 if (pci_get_class(dev) == PCIC_BASEPERIPH &&
     pci_get_subclass(dev) == PCIS_BASEPERIPH_PIC) {
  switch (pci_get_progif(dev)) {
  case 128:
   device_set_desc(dev, "IO APIC");
   break;
  case 129:
   device_set_desc(dev, "IO(x) APIC");
   break;
  default:
   return (ENXIO);
  }
  device_quiet(dev);
  return (-10000);
 }
 return (ENXIO);
}
