
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_keyboard_softc {int sc_callout; } ;


 int USB_MS_TO_TICKS (int) ;
 int g_keyboard_key_press_interval ;
 int g_keyboard_timeout ;
 int usb_callout_reset (int *,int,int *,struct g_keyboard_softc*) ;

__attribute__((used)) static void
g_keyboard_timeout_reset(struct g_keyboard_softc *sc)
{
 int i = g_keyboard_key_press_interval;

 if (i <= 0)
  i = 1;
 else if (i > 1023)
  i = 1023;

 i = USB_MS_TO_TICKS(i);

 usb_callout_reset(&sc->sc_callout, i, &g_keyboard_timeout, sc);
}
