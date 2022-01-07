
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int version; } ;
typedef TYPE_1__ ig4iic_softc_t ;
typedef int device_t ;
struct TYPE_6__ {scalar_t__ devid; int version; int desc; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 TYPE_1__* device_get_softc (int ) ;
 int device_set_desc (int ,int ) ;
 TYPE_2__* ig4iic_pci_devices ;
 int nitems (TYPE_2__*) ;
 scalar_t__ pci_get_devid (int ) ;

__attribute__((used)) static int
ig4iic_pci_probe(device_t dev)
{
 ig4iic_softc_t *sc = device_get_softc(dev);
 uint32_t devid;
 int i;

 devid = pci_get_devid(dev);
 for (i = 0; i < nitems(ig4iic_pci_devices); i++) {
  if (ig4iic_pci_devices[i].devid == devid) {
   device_set_desc(dev, ig4iic_pci_devices[i].desc);
   sc->version = ig4iic_pci_devices[i].version;
   return (BUS_PROBE_DEFAULT);
  }
 }
 return (ENXIO);
}
