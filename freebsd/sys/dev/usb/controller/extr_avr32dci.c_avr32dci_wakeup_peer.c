
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bus_mtx; } ;
struct TYPE_3__ {int status_suspend; } ;
struct avr32dci_softc {TYPE_2__ sc_bus; TYPE_1__ sc_flags; } ;


 int AVR32_CTRL_DEV_REWAKEUP ;
 int avr32dci_mod_ctrl (struct avr32dci_softc*,int ,int ) ;
 int hz ;
 int usb_pause_mtx (int *,int) ;

__attribute__((used)) static void
avr32dci_wakeup_peer(struct avr32dci_softc *sc)
{
 if (!sc->sc_flags.status_suspend) {
  return;
 }
 avr32dci_mod_ctrl(sc, AVR32_CTRL_DEV_REWAKEUP, 0);



 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 125);


}
