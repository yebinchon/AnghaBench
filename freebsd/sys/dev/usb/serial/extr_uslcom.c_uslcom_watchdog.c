
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uslcom_softc {int sc_watchdog; int * sc_xfer; int sc_mtx; } ;


 int MA_OWNED ;
 size_t USLCOM_CTRL_DT_RD ;
 int hz ;
 int mtx_assert (int *,int ) ;
 int usb_callout_reset (int *,int,void (*) (void*),struct uslcom_softc*) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
uslcom_watchdog(void *arg)
{
 struct uslcom_softc *sc = arg;

 mtx_assert(&sc->sc_mtx, MA_OWNED);

 usbd_transfer_start(sc->sc_xfer[USLCOM_CTRL_DT_RD]);

 usb_callout_reset(&sc->sc_watchdog,
     hz / 4, &uslcom_watchdog, sc);
}
