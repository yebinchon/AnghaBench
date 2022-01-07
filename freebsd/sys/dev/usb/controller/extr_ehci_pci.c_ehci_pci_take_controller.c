
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef void* uint32_t ;
typedef int uint16_t ;
struct TYPE_5__ {int bdev; } ;
struct TYPE_6__ {TYPE_1__ sc_bus; } ;
typedef TYPE_2__ ehci_softc_t ;
typedef int device_t ;


 scalar_t__ EHCI_EC_LEGSUP ;
 scalar_t__ EHCI_EECP_ID (void*) ;
 scalar_t__ EHCI_EECP_NEXT (void*) ;
 int EHCI_HCCPARAMS ;
 scalar_t__ EHCI_HCC_EECP (void*) ;
 scalar_t__ EHCI_LEGSUP_BIOS_SEM ;
 scalar_t__ EHCI_LEGSUP_OS_SEM ;
 void* EREAD4 (TYPE_2__*,int ) ;
 TYPE_2__* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 void* pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int,int) ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static int
ehci_pci_take_controller(device_t self)
{
 ehci_softc_t *sc = device_get_softc(self);
 uint32_t cparams;
 uint32_t eec;
 uint16_t to;
 uint8_t eecp;
 uint8_t bios_sem;

 cparams = EREAD4(sc, EHCI_HCCPARAMS);


 for (eecp = EHCI_HCC_EECP(cparams); eecp != 0;
     eecp = EHCI_EECP_NEXT(eec)) {
  eec = pci_read_config(self, eecp, 4);
  if (EHCI_EECP_ID(eec) != EHCI_EC_LEGSUP) {
   continue;
  }
  bios_sem = pci_read_config(self, eecp +
      EHCI_LEGSUP_BIOS_SEM, 1);
  if (bios_sem == 0) {
   continue;
  }
  device_printf(sc->sc_bus.bdev, "waiting for BIOS "
      "to give up control\n");
  pci_write_config(self, eecp +
      EHCI_LEGSUP_OS_SEM, 1, 1);
  to = 500;
  while (1) {
   bios_sem = pci_read_config(self, eecp +
       EHCI_LEGSUP_BIOS_SEM, 1);
   if (bios_sem == 0)
    break;

   if (--to == 0) {
    device_printf(sc->sc_bus.bdev,
        "timed out waiting for BIOS\n");
    break;
   }
   usb_pause_mtx(((void*)0), hz / 100);
  }
 }
 return (0);
}
