
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ PCIC_BRIDGE ;
 scalar_t__ PCIS_BRIDGE_HOST ;
 scalar_t__ agp_find_caps (int ) ;
 scalar_t__ pci_get_class (int ) ;
 int pci_get_devid (int ) ;
 scalar_t__ pci_get_subclass (int ) ;

__attribute__((used)) static const char*
agp_ali_match(device_t dev)
{
 if (pci_get_class(dev) != PCIC_BRIDGE
     || pci_get_subclass(dev) != PCIS_BRIDGE_HOST)
  return ((void*)0);

 if (agp_find_caps(dev) == 0)
  return ((void*)0);

 switch (pci_get_devid(dev)) {
 case 0x167110b9:
  return ("Ali M1671 host to AGP bridge");
 case 0x154110b9:
  return ("Ali M1541 host to AGP bridge");
 case 0x162110b9:
  return ("Ali M1621 host to AGP bridge");
 }

 return ((void*)0);
}
