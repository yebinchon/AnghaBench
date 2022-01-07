
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int device_t ;
struct TYPE_3__ {scalar_t__ device; int desc; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ PCI_VENDOR_ID_CHELSIO ;
 int device_set_desc (int ,int ) ;
 int nitems (TYPE_1__*) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_function (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 TYPE_1__* t5_pciids ;

__attribute__((used)) static int
t5_probe(device_t dev)
{
 int i;
 uint16_t v = pci_get_vendor(dev);
 uint16_t d = pci_get_device(dev);
 uint8_t f = pci_get_function(dev);

 if (v != PCI_VENDOR_ID_CHELSIO)
  return (ENXIO);


 if (d == 0xb000 && f != 0)
  return (ENXIO);

 for (i = 0; i < nitems(t5_pciids); i++) {
  if (d == t5_pciids[i].device) {
   device_set_desc(dev, t5_pciids[i].desc);
   return (BUS_PROBE_DEFAULT);
  }
 }

 return (ENXIO);
}
