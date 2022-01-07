
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ukbd_softc {int * sc_xfer; int sc_flags; int sc_leds; } ;


 int DPRINTF (char*,int ) ;
 size_t UKBD_CTRL_LED ;
 int UKBD_FLAG_SET_LEDS ;
 int UKBD_LOCK_ASSERT () ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
ukbd_set_leds(struct ukbd_softc *sc, uint8_t leds)
{

 UKBD_LOCK_ASSERT();
 DPRINTF("leds=0x%02x\n", leds);

 sc->sc_leds = leds;
 sc->sc_flags |= UKBD_FLAG_SET_LEDS;



 usbd_transfer_start(sc->sc_xfer[UKBD_CTRL_LED]);
}
