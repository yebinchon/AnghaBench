
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_list {int dummy; } ;
struct pci_devinfo {struct resource_list resources; } ;
typedef int device_t ;


 struct pci_devinfo* device_get_ivars (int ) ;

struct resource_list *
pci_get_resource_list (device_t dev, device_t child)
{
 struct pci_devinfo *dinfo = device_get_ivars(child);

 return (&dinfo->resources);
}
