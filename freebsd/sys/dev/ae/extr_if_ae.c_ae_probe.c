
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ vendorid; scalar_t__ deviceid; int name; } ;


 int AE_DEVS_COUNT ;
 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 TYPE_1__* ae_devs ;
 int device_set_desc (int ,int ) ;
 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static int
ae_probe(device_t dev)
{
 uint16_t deviceid, vendorid;
 int i;

 vendorid = pci_get_vendor(dev);
 deviceid = pci_get_device(dev);




 for (i = 0; i < AE_DEVS_COUNT; i++) {
  if (vendorid == ae_devs[i].vendorid &&
      deviceid == ae_devs[i].deviceid) {
   device_set_desc(dev, ae_devs[i].name);
   return (BUS_PROBE_DEFAULT);
  }
 }
 return (ENXIO);
}
