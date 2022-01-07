
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef scalar_t__ devclass_t ;


 scalar_t__ devclass_find (char*) ;
 scalar_t__ device_get_devclass (int ) ;
 int device_get_parent (int ) ;

int
dmar_dev_depth(device_t child)
{
 devclass_t pci_class;
 device_t bus, pcib;
 int depth;

 pci_class = devclass_find("pci");
 for (depth = 1; ; depth++) {
  bus = device_get_parent(child);
  pcib = device_get_parent(bus);
  if (device_get_devclass(device_get_parent(pcib)) !=
      pci_class)
   return (depth);
  child = pcib;
 }
}
