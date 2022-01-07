
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
agp_ati_match(device_t dev)
{
 if (pci_get_class(dev) != PCIC_BRIDGE ||
     pci_get_subclass(dev) != PCIS_BRIDGE_HOST)
  return ((void*)0);

 if (agp_find_caps(dev) == 0)
  return ((void*)0);

 switch (pci_get_devid(dev)) {
 case 0xcab01002:
  return ("ATI RS100 AGP bridge");
 case 0xcab21002:
  return ("ATI RS200 AGP bridge");
 case 0xcbb21002:
  return ("ATI RS200M AGP bridge");
 case 0xcab31002:
  return ("ATI RS250 AGP bridge");
 case 0x58301002:
  return ("ATI RS300_100 AGP bridge");
 case 0x58311002:
  return ("ATI RS300_133 AGP bridge");
 case 0x58321002:
  return ("ATI RS300_166 AGP bridge");
 case 0x58331002:
  return ("ATI RS300_200 AGP bridge");
 }

 return ((void*)0);
}
