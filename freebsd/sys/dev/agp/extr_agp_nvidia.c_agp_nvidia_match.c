
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;




 scalar_t__ NVIDIA_VENDORID ;
 scalar_t__ PCIC_BRIDGE ;
 scalar_t__ PCIS_BRIDGE_HOST ;
 scalar_t__ pci_get_class (int ) ;
 int pci_get_device (int ) ;
 scalar_t__ pci_get_subclass (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static const char *
agp_nvidia_match (device_t dev)
{
 if (pci_get_class(dev) != PCIC_BRIDGE ||
     pci_get_subclass(dev) != PCIS_BRIDGE_HOST ||
     pci_get_vendor(dev) != NVIDIA_VENDORID)
  return (((void*)0));

 switch (pci_get_device(dev)) {
 case 129:
  return ("NVIDIA nForce AGP Controller");
 case 128:
  return ("NVIDIA nForce2 AGP Controller");
 }
 return (((void*)0));
}
