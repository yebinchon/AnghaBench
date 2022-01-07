
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dy; scalar_t__ dx; } ;
struct g_mouse_softc {int sc_do_cursor_update; int sc_cursor_update_callout; scalar_t__ sc_tick; TYPE_1__ sc_data; } ;


 int USB_MS_TO_TICKS (int) ;
 int g_mouse_cursor_update_interval ;
 int g_mouse_cursor_update_timeout ;
 int usb_callout_reset (int *,int,int *,struct g_mouse_softc*) ;

__attribute__((used)) static void
g_mouse_cursor_update_timeout_reset(struct g_mouse_softc *sc)
{
 int i = g_mouse_cursor_update_interval;

 if (i <= 0) {
  sc->sc_data.dx = 0;
  sc->sc_data.dy = 0;
  sc->sc_do_cursor_update = 0;
  sc->sc_tick = 0;
 } else {
  sc->sc_do_cursor_update = 1;
 }

 if ((i <= 0) || (i > 1023))
  i = 1023;

 i = USB_MS_TO_TICKS(i);

 usb_callout_reset(&sc->sc_cursor_update_callout, i,
     &g_mouse_cursor_update_timeout, sc);
}
