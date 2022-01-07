
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_5__ {scalar_t__ device; TYPE_1__* cfg; } ;
struct TYPE_4__ {int name; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ PCI_VENDOR_INTEL ;
 int device_set_desc (int ,int ) ;
 TYPE_2__* iwm_devices ;
 int nitems (TYPE_2__*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
iwm_probe(device_t dev)
{
 int i;

 for (i = 0; i < nitems(iwm_devices); i++) {
  if (pci_get_vendor(dev) == PCI_VENDOR_INTEL &&
      pci_get_device(dev) == iwm_devices[i].device) {
   device_set_desc(dev, iwm_devices[i].cfg->name);
   return (BUS_PROBE_DEFAULT);
  }
 }

 return (ENXIO);
}
