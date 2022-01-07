
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ukbd_softc {int sc_flags; scalar_t__ sc_inputs; int sc_time_ms; int sc_xfer; } ;


 int DELAY (int) ;
 int DPRINTFN (int,char*) ;
 int KASSERT (int,char*) ;
 int PRI_UNCHANGED ;
 int UKBD_FLAG_POLLING ;
 int UKBD_LOCK_ASSERT () ;
 int UKBD_N_TRANSFER ;
 scalar_t__ USB_IN_POLLING_MODE_FUNC () ;
 int kern_yield (int ) ;
 scalar_t__ ukbd_any_key_pressed (struct ukbd_softc*) ;
 int ukbd_interrupt (struct ukbd_softc*) ;
 int usbd_transfer_poll (int ,int ) ;

__attribute__((used)) static void
ukbd_do_poll(struct ukbd_softc *sc, uint8_t wait)
{

 UKBD_LOCK_ASSERT();
 KASSERT((sc->sc_flags & UKBD_FLAG_POLLING) != 0,
     ("ukbd_do_poll called when not polling\n"));
 DPRINTFN(2, "polling\n");

 if (USB_IN_POLLING_MODE_FUNC() == 0) {







  while (sc->sc_inputs == 0) {




   kern_yield(PRI_UNCHANGED);
   if (!wait)
    break;
  }
  return;
 }

 while (sc->sc_inputs == 0) {

  usbd_transfer_poll(sc->sc_xfer, UKBD_N_TRANSFER);


  if (ukbd_any_key_pressed(sc)) {

   DELAY(1000);


   sc->sc_time_ms += 1;
  }

  ukbd_interrupt(sc);

  if (!wait)
   break;
 }
}
