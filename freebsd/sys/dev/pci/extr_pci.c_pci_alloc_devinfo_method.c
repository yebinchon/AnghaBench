
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devinfo {int dummy; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 struct pci_devinfo* malloc (int,int ,int) ;

struct pci_devinfo *
pci_alloc_devinfo_method(device_t dev)
{

 return (malloc(sizeof(struct pci_devinfo), M_DEVBUF,
     M_WAITOK | M_ZERO));
}
