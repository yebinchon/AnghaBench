
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulpt_softc {scalar_t__ sc_fflags; int sc_watchdog; int * sc_xfer; int sc_mtx; } ;


 int MA_OWNED ;
 size_t ULPT_INTR_DT_RD ;
 int hz ;
 int mtx_assert (int *,int ) ;
 int usb_callout_reset (int *,int ,void (*) (void*),struct ulpt_softc*) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
ulpt_watchdog(void *arg)
{
 struct ulpt_softc *sc = arg;

 mtx_assert(&sc->sc_mtx, MA_OWNED);





 if (sc->sc_fflags == 0)
  usbd_transfer_start(sc->sc_xfer[ULPT_INTR_DT_RD]);

 usb_callout_reset(&sc->sc_watchdog,
     hz, &ulpt_watchdog, sc);
}
