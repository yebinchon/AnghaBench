
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_devinfo {int dummy; } ;
struct ofw_pcibus_devinfo {struct pci_devinfo opd_dinfo; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 struct ofw_pcibus_devinfo* malloc (int,int ,int) ;

struct pci_devinfo *
ofw_pcibus_alloc_devinfo(device_t dev)
{
 struct ofw_pcibus_devinfo *dinfo;

 dinfo = malloc(sizeof(*dinfo), M_DEVBUF, M_WAITOK | M_ZERO);
 return (&dinfo->opd_dinfo);
}
