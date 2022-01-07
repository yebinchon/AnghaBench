
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int device_t ;
struct TYPE_3__ {scalar_t__ device; int desc; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ PCI_VENDOR_ID_CHELSIO ;
 int device_set_desc (int ,int ) ;
 int nitems (TYPE_1__*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 TYPE_1__* t6_pciids ;

__attribute__((used)) static int
t6_probe(device_t dev)
{
 int i;
 uint16_t v = pci_get_vendor(dev);
 uint16_t d = pci_get_device(dev);

 if (v != PCI_VENDOR_ID_CHELSIO)
  return (ENXIO);

 for (i = 0; i < nitems(t6_pciids); i++) {
  if (d == t6_pciids[i].device) {
   device_set_desc(dev, t6_pciids[i].desc);
   return (BUS_PROBE_DEFAULT);
  }
 }

 return (ENXIO);
}
