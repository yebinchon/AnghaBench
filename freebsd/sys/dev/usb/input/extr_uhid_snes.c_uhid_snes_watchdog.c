
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhid_snes_softc {scalar_t__ sc_fflags; int sc_watchdog; int * sc_transfer; int sc_mutex; } ;


 int MA_OWNED ;
 size_t UHID_SNES_STATUS_DT_RD ;
 int hz ;
 int mtx_assert (int *,int ) ;
 int usb_callout_reset (int *,int ,void (*) (void*),struct uhid_snes_softc*) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
uhid_snes_watchdog(void *arg)
{
 struct uhid_snes_softc *sc = arg;

 mtx_assert(&sc->sc_mutex, MA_OWNED);

 if (sc->sc_fflags == 0)
  usbd_transfer_start(sc->sc_transfer[UHID_SNES_STATUS_DT_RD]);

 usb_callout_reset(&sc->sc_watchdog, hz, &uhid_snes_watchdog, sc);
}
