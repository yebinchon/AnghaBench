
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usie_softc {int sc_mtx; int sc_if_sync_ch; } ;


 int USIE_HIP_SYNC2M ;
 int hz ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_callout_reset (int *,int,int ,struct usie_softc*) ;
 int usie_if_cmd (struct usie_softc*,int ) ;
 int usie_if_sync_to ;

__attribute__((used)) static void
usie_if_sync_cb(void *arg, int pending)
{
 struct usie_softc *sc = arg;

 mtx_lock(&sc->sc_mtx);


 usie_if_cmd(sc, USIE_HIP_SYNC2M);
 usie_if_cmd(sc, USIE_HIP_SYNC2M);

 usb_callout_reset(&sc->sc_if_sync_ch, 2 * hz, usie_if_sync_to, sc);

 mtx_unlock(&sc->sc_mtx);
}
