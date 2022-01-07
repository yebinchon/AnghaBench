
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {scalar_t__ gpd_devid; int * gpd_desc; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int *) ;
 TYPE_1__* gem_pci_devlist ;
 scalar_t__ pci_get_devid (int ) ;

__attribute__((used)) static int
gem_pci_probe(device_t dev)
{
 int i;

 for (i = 0; gem_pci_devlist[i].gpd_desc != ((void*)0); i++) {
  if (pci_get_devid(dev) == gem_pci_devlist[i].gpd_devid) {
   device_set_desc(dev, gem_pci_devlist[i].gpd_desc);
   return (BUS_PROBE_DEFAULT);
  }
 }

 return (ENXIO);
}
