
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {scalar_t__ cpd_devid; scalar_t__ cpd_revid; int * cpd_desc; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 TYPE_1__* cas_pci_devlist ;
 int device_set_desc (int ,int *) ;
 scalar_t__ pci_get_devid (int ) ;
 scalar_t__ pci_get_revid (int ) ;

__attribute__((used)) static int
cas_pci_probe(device_t dev)
{
 int i;

 for (i = 0; cas_pci_devlist[i].cpd_desc != ((void*)0); i++) {
  if (pci_get_devid(dev) == cas_pci_devlist[i].cpd_devid &&
      pci_get_revid(dev) >= cas_pci_devlist[i].cpd_revid) {
   device_set_desc(dev, cas_pci_devlist[i].cpd_desc);
   return (BUS_PROBE_DEFAULT);
  }
 }

 return (ENXIO);
}
