
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mouse_softc {int * sc_xfer; } ;


 int DPRINTFN (int,char*,int ) ;
 size_t G_MOUSE_INTR_DT ;
 int g_mouse_cursor_update_timeout_reset (struct g_mouse_softc*) ;
 int g_mouse_update_mode_radius (struct g_mouse_softc*) ;
 int usbd_transfer_start (int ) ;

__attribute__((used)) static void
g_mouse_cursor_update_timeout(void *arg)
{
 struct g_mouse_softc *sc = arg;

 g_mouse_update_mode_radius(sc);

 DPRINTFN(11, "Timeout %p (cursor update)\n", sc->sc_xfer[G_MOUSE_INTR_DT]);

 g_mouse_cursor_update_timeout_reset(sc);

 usbd_transfer_start(sc->sc_xfer[G_MOUSE_INTR_DT]);
}
