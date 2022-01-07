
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devinfo {int dummy; } ;
typedef int device_t ;


 int pci_add_child (int ,struct pci_devinfo*) ;
 struct pci_devinfo* pci_read_device (int ,int ,int,int,int,int) ;

__attribute__((used)) static struct pci_devinfo *
pci_identify_function(device_t pcib, device_t dev, int domain, int busno,
    int slot, int func)
{
 struct pci_devinfo *dinfo;

 dinfo = pci_read_device(pcib, dev, domain, busno, slot, func);
 if (dinfo != ((void*)0))
  pci_add_child(dev, dinfo);

 return (dinfo);
}
