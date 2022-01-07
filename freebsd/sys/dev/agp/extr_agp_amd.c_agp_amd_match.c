
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
agp_amd_match(device_t dev)
{
 if (pci_get_class(dev) != PCIC_BRIDGE
     || pci_get_subclass(dev) != PCIS_BRIDGE_HOST)
  return ((void*)0);

 if (agp_find_caps(dev) == 0)
  return ((void*)0);

 switch (pci_get_devid(dev)) {
 case 0x70061022:
  return ("AMD 751 host to AGP bridge");
 case 0x700e1022:
  return ("AMD 761 host to AGP bridge");
 case 0x700c1022:
  return ("AMD 762 host to AGP bridge");
 }

 return ((void*)0);
}
