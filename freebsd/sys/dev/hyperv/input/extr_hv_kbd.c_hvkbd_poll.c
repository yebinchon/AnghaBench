
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_5__ {scalar_t__ sc_polling; int sc_flags; } ;
typedef TYPE_2__ hv_kbd_sc ;


 int HVKBD_FLAG_POLLING ;
 int HVKBD_LOCK () ;
 int HVKBD_UNLOCK () ;

__attribute__((used)) static int
hvkbd_poll(keyboard_t *kbd, int on)
{
 hv_kbd_sc *sc = kbd->kb_data;

 HVKBD_LOCK();




 if (on)
  sc->sc_polling++;
 else if (sc->sc_polling > 0)
  sc->sc_polling--;

 if (sc->sc_polling != 0) {
  sc->sc_flags |= HVKBD_FLAG_POLLING;
 } else {
  sc->sc_flags &= ~HVKBD_FLAG_POLLING;
 }
 HVKBD_UNLOCK();
 return (0);
}
