
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct iwm_softc {int cfg; } ;
typedef int device_t ;
struct TYPE_3__ {scalar_t__ device; int cfg; } ;


 int ENXIO ;
 struct iwm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 TYPE_1__* iwm_devices ;
 int nitems (TYPE_1__*) ;
 scalar_t__ pci_get_device (int ) ;

__attribute__((used)) static int
iwm_dev_check(device_t dev)
{
 struct iwm_softc *sc;
 uint16_t devid;
 int i;

 sc = device_get_softc(dev);

 devid = pci_get_device(dev);
 for (i = 0; i < nitems(iwm_devices); i++) {
  if (iwm_devices[i].device == devid) {
   sc->cfg = iwm_devices[i].cfg;
   return (0);
  }
 }
 device_printf(dev, "unknown adapter type\n");
 return ENXIO;
}
