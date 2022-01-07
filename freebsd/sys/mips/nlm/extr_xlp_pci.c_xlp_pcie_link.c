
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;


 int device_get_nameunit (int *) ;
 int * device_get_parent (int *) ;
 int device_printf (int *,char*) ;
 int pci_get_function (int *) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
xlp_pcie_link(device_t pcib, device_t dev)
{
 device_t parent, tmp;


 tmp = dev;
 while (1) {
  parent = device_get_parent(tmp);
  if (parent == ((void*)0) || parent == pcib) {
   device_printf(dev, "Cannot find parent bus\n");
   return (-1);
  }
  if (strcmp(device_get_nameunit(parent), "pci0") == 0)
   break;
  tmp = parent;
 }
 return (pci_get_function(tmp));
}
