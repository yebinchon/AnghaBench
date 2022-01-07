
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
typedef scalar_t__ devclass_t ;
struct TYPE_2__ {int Function; int Device; } ;
typedef TYPE_1__ ACPI_DMAR_PCI_PATH ;


 scalar_t__ devclass_find (char*) ;
 scalar_t__ device_get_devclass (int ) ;
 int device_get_parent (int ) ;
 int panic (char*) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 int pcib_get_bus (int ) ;

void
dmar_dev_path(device_t child, int *busno, void *path1, int depth)
{
 devclass_t pci_class;
 device_t bus, pcib;
 ACPI_DMAR_PCI_PATH *path;

 pci_class = devclass_find("pci");
 path = path1;
 for (depth--; depth != -1; depth--) {
  path[depth].Device = pci_get_slot(child);
  path[depth].Function = pci_get_function(child);
  bus = device_get_parent(child);
  pcib = device_get_parent(bus);
  if (device_get_devclass(device_get_parent(pcib)) !=
      pci_class) {

   *busno = pcib_get_bus(bus);
   return;
  }
  child = pcib;
 }
 panic("wrong depth");
}
