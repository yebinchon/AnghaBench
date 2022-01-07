
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octusb_softc {int sc_bus; } ;


 int DPRINTFN (int,char*) ;
 int USB_BUS_LOCK (int *) ;
 int USB_BUS_UNLOCK (int *) ;
 int octusb_interrupt_poll (struct octusb_softc*) ;

void
octusb_interrupt(struct octusb_softc *sc)
{
 USB_BUS_LOCK(&sc->sc_bus);

 DPRINTFN(16, "real interrupt\n");


 octusb_interrupt_poll(sc);

 USB_BUS_UNLOCK(&sc->sc_bus);
}
