
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ buttons; } ;
struct g_mouse_softc {int sc_do_button_update; int sc_button_press_callout; TYPE_1__ sc_data; } ;


 int USB_MS_TO_TICKS (int) ;
 int g_mouse_button_press_interval ;
 int g_mouse_button_press_timeout ;
 int usb_callout_reset (int *,int,int *,struct g_mouse_softc*) ;

__attribute__((used)) static void
g_mouse_button_press_timeout_reset(struct g_mouse_softc *sc)
{
 int i = g_mouse_button_press_interval;

 if (i <= 0) {
  sc->sc_data.buttons = 0;
  sc->sc_do_button_update = 0;
 } else {
  sc->sc_do_button_update = 1;
 }

 if ((i <= 0) || (i > 1023))
  i = 1023;

 i = USB_MS_TO_TICKS(i);

 usb_callout_reset(&sc->sc_button_press_callout, i,
     &g_mouse_button_press_timeout, sc);
}
