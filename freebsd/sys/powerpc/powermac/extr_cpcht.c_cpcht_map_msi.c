
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct pcicfg_ht {int ht_msiaddr; } ;
struct TYPE_2__ {struct pcicfg_ht ht; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
typedef scalar_t__ device_t ;


 int ENXIO ;
 struct pci_devinfo* device_get_ivars (scalar_t__) ;
 scalar_t__ device_get_parent (scalar_t__) ;

__attribute__((used)) static int
cpcht_map_msi(device_t dev, device_t child, int irq, uint64_t *addr,
    uint32_t *data)
{
 device_t pcib;
 struct pci_devinfo *dinfo;
 struct pcicfg_ht *ht = ((void*)0);

 for (pcib = child; pcib != dev; pcib =
     device_get_parent(device_get_parent(pcib))) {
  dinfo = device_get_ivars(pcib);
  ht = &dinfo->cfg.ht;

  if (ht == ((void*)0))
   continue;
 }

 if (ht == ((void*)0))
  return (ENXIO);

 *addr = ht->ht_msiaddr;
 *data = irq & 0xff;

 return (0);
}
