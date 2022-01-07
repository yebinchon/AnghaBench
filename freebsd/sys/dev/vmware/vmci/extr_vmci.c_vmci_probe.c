
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {scalar_t__ vendor; scalar_t__ device; int desc; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 TYPE_1__* vmci_ids ;

__attribute__((used)) static int
vmci_probe(device_t dev)
{

 if (pci_get_vendor(dev) == vmci_ids[0].vendor &&
     pci_get_device(dev) == vmci_ids[0].device) {
  device_set_desc(dev, vmci_ids[0].desc);

  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
