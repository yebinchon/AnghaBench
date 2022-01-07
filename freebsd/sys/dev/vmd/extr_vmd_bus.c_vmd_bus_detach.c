
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devinfo {int resources; } ;
typedef int device_t ;


 scalar_t__ PCI_DOMAINMAX ;
 int device_delete_children (int ) ;
 int device_get_parent (int ) ;
 scalar_t__ device_get_unit (int ) ;
 struct pci_devinfo* pci_read_device (int ,int ,scalar_t__,int,int,int) ;
 int resource_list_free (int *) ;

__attribute__((used)) static int
vmd_bus_detach(device_t dev)
{
 struct pci_devinfo *dinfo;
 int b, s, f;

 device_delete_children(dev);

 b = s = f = 0;
 dinfo = pci_read_device(device_get_parent(dev), dev,
     PCI_DOMAINMAX - device_get_unit(device_get_parent(dev)),
     b, s, f);
 if (dinfo == ((void*)0)) {
  resource_list_free(&dinfo->resources);
 }
 return (0);
}
