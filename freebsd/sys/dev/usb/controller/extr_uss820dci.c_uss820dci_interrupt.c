
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int status_bus_reset; int status_suspend; int change_suspend; int change_connect; } ;
struct uss820dci_softc {scalar_t__ sc_xfer_complete; int sc_bus; TYPE_1__ sc_flags; } ;


 int DPRINTF (char*,int) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int USS820_DCI_THREAD_IRQ ;
 int USS820_READ_1 (struct uss820dci_softc*,int ) ;
 int USS820_SBI ;
 int USS820_SBI1 ;
 int USS820_SSR ;
 int USS820_SSR_RESET ;
 int USS820_SSR_RESUME ;
 int USS820_SSR_SUSPEND ;
 int uss820dci_interrupt_complete_locked (struct uss820dci_softc*) ;
 int uss820dci_root_intr (struct uss820dci_softc*) ;
 int uss820dci_update_shared_1 (struct uss820dci_softc*,int ,int,int ) ;
 int uss820dci_wait_suspend (struct uss820dci_softc*,int) ;

void
uss820dci_interrupt(void *arg)
{
 struct uss820dci_softc *sc = arg;
 uint8_t ssr;
 uint8_t event;

 USB_BUS_LOCK(&sc->sc_bus);
 USB_BUS_SPIN_LOCK(&sc->sc_bus);

 ssr = USS820_READ_1(sc, USS820_SSR);



 uss820dci_update_shared_1(sc, USS820_SSR, ~USS820_DCI_THREAD_IRQ, 0);



 if (ssr & USS820_DCI_THREAD_IRQ) {

  event = 0;

  if (ssr & USS820_SSR_RESET) {
   sc->sc_flags.status_bus_reset = 1;
   sc->sc_flags.status_suspend = 0;
   sc->sc_flags.change_suspend = 0;
   sc->sc_flags.change_connect = 1;


   uss820dci_wait_suspend(sc, 1);

   event = 1;
  }






  if (ssr & USS820_SSR_RESUME) {
   if (sc->sc_flags.status_suspend) {
    sc->sc_flags.status_suspend = 0;
    sc->sc_flags.change_suspend = 1;

    uss820dci_wait_suspend(sc, 1);
    event = 1;
   }
  } else if (ssr & USS820_SSR_SUSPEND) {
   if (!sc->sc_flags.status_suspend) {
    sc->sc_flags.status_suspend = 1;
    sc->sc_flags.change_suspend = 1;

    uss820dci_wait_suspend(sc, 0);
    event = 1;
   }
  }
  if (event) {

   DPRINTF("real bus interrupt 0x%02x\n", ssr);


   uss820dci_root_intr(sc);
  }
 }

 uss820dci_update_shared_1(sc, USS820_SBI, 0, 0);


 uss820dci_update_shared_1(sc, USS820_SBI1, 0, 0);

 if (sc->sc_xfer_complete != 0) {
  sc->sc_xfer_complete = 0;


  uss820dci_interrupt_complete_locked(sc);
 }
 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);
 USB_BUS_UNLOCK(&sc->sc_bus);
}
