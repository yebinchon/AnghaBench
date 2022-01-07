
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 scalar_t__ PCIC_BRIDGE ;
 scalar_t__ PCIS_BRIDGE_ISA ;
 int bootverbose ;
 int device_set_desc (int ,char*) ;
 scalar_t__ pci_get_class (int ) ;
 int pci_get_devid (int ) ;
 int pci_get_subclass (int ) ;
 int printf (char*,int) ;

__attribute__((used)) static int
isab_pci_probe(device_t dev)
{
    int matched = 0;




    if ((pci_get_class(dev) == PCIC_BRIDGE) &&
 (pci_get_subclass(dev) == PCIS_BRIDGE_ISA)) {
 matched = 1;
    } else {






 switch (pci_get_devid(dev)) {
 case 0x04848086:
 case 0x122e8086:
 case 0x70008086:
 case 0x71108086:
 case 0x71988086:
 case 0x24108086:
 case 0x24208086:
 case 0x24408086:
 case 0x00061004:
 case 0x05861106:
 case 0x05961106:
 case 0x06861106:
 case 0x153310b9:
 case 0x154310b9:
 case 0x00081039:
 case 0x00001078:
 case 0x01001078:
 case 0xc7001045:
 case 0x886a1060:
 case 0x02001166:
     if (bootverbose)
  printf("PCI-ISA bridge with incorrect subclass 0x%x\n",
         pci_get_subclass(dev));
     matched = 1;
     break;

 default:
     break;
 }
    }

    if (matched) {
 device_set_desc(dev, "PCI-ISA bridge");
 return(-10000);
    }
    return(ENXIO);
}
