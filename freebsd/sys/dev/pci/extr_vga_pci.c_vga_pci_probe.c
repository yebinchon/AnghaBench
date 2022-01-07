
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;


 int PCIS_OLD_VGA ;
 int device_set_desc (int ,char*) ;
 int pci_get_class (int ) ;
 int pci_get_subclass (int ) ;
 int vga_pci_is_boot_display (int ) ;

__attribute__((used)) static int
vga_pci_probe(device_t dev)
{

 switch (pci_get_class(dev)) {
 case 129:
  break;
 case 128:
  if (pci_get_subclass(dev) != PCIS_OLD_VGA)
   return (ENXIO);
  break;
 default:
  return (ENXIO);
 }


 vga_pci_is_boot_display(dev);

 device_set_desc(dev, "VGA-compatible display");
 return (BUS_PROBE_GENERIC);
}
