
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uss820dci_softc {scalar_t__ sc_xfer_complete; int sc_bus; } ;


 int FILTER_HANDLED ;
 int FILTER_SCHEDULE_THREAD ;
 int USB_BUS_SPIN_LOCK (int *) ;
 int USB_BUS_SPIN_UNLOCK (int *) ;
 int USS820_DCI_THREAD_IRQ ;
 int USS820_READ_1 (struct uss820dci_softc*,int ) ;
 int USS820_SSR ;
 int uss820dci_interrupt_poll_locked (struct uss820dci_softc*) ;
 int uss820dci_update_shared_1 (struct uss820dci_softc*,int ,int,int ) ;

int
uss820dci_filter_interrupt(void *arg)
{
 struct uss820dci_softc *sc = arg;
 int retval = FILTER_HANDLED;
 uint8_t ssr;

 USB_BUS_SPIN_LOCK(&sc->sc_bus);

 ssr = USS820_READ_1(sc, USS820_SSR);
 uss820dci_update_shared_1(sc, USS820_SSR, USS820_DCI_THREAD_IRQ, 0);

 if (ssr & USS820_DCI_THREAD_IRQ)
  retval = FILTER_SCHEDULE_THREAD;


 uss820dci_interrupt_poll_locked(sc);

 if (sc->sc_xfer_complete != 0)
  retval = FILTER_SCHEDULE_THREAD;

 USB_BUS_SPIN_UNLOCK(&sc->sc_bus);

 return (retval);
}
