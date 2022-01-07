
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

__attribute__((used)) static struct pci_devinfo *
vmd_alloc_devinfo(device_t dev)
{
 struct pci_devinfo *dinfo;

 dinfo = malloc(sizeof(*dinfo), M_DEVBUF, M_WAITOK | M_ZERO);
 return (dinfo);
}
