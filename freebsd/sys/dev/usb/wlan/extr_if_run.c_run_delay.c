
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct run_softc {int sc_mtx; } ;


 int USB_MS_TO_TICKS (int ) ;
 scalar_t__ mtx_owned (int *) ;
 int usb_pause_mtx (int *,int ) ;

__attribute__((used)) static void
run_delay(struct run_softc *sc, u_int ms)
{
 usb_pause_mtx(mtx_owned(&sc->sc_mtx) ?
     &sc->sc_mtx : ((void*)0), USB_MS_TO_TICKS(ms));
}
