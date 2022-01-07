
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int bus_mtx; } ;
struct TYPE_3__ {int status_suspend; } ;
struct atmegadci_softc {TYPE_2__ sc_bus; TYPE_1__ sc_flags; } ;


 int ATMEGA_READ_1 (struct atmegadci_softc*,int ) ;
 int ATMEGA_UDCON ;
 int ATMEGA_UDCON_RMWKUP ;
 int ATMEGA_WRITE_1 (struct atmegadci_softc*,int ,int) ;
 int hz ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static void
atmegadci_wakeup_peer(struct atmegadci_softc *sc)
{
 uint8_t temp;

 if (!sc->sc_flags.status_suspend) {
  return;
 }

 temp = ATMEGA_READ_1(sc, ATMEGA_UDCON);
 ATMEGA_WRITE_1(sc, ATMEGA_UDCON, temp | ATMEGA_UDCON_RMWKUP);



 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 125);


}
