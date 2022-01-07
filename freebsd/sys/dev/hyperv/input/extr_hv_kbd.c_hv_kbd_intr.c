
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_8__ {int kc_arg; int (* kc_func ) (TYPE_3__*,int ,int ) ;} ;
struct TYPE_10__ {TYPE_1__ kb_callback; } ;
struct TYPE_9__ {int sc_flags; TYPE_3__ sc_kbd; } ;
typedef TYPE_2__ hv_kbd_sc ;


 int HVKBD_FLAG_POLLING ;
 int KBDIO_KEYINPUT ;
 scalar_t__ KBD_IS_ACTIVE (TYPE_3__*) ;
 scalar_t__ KBD_IS_BUSY (TYPE_3__*) ;
 scalar_t__ NOKEY ;
 scalar_t__ hvkbd_read_char (TYPE_3__*,int ) ;
 int stub1 (TYPE_3__*,int ,int ) ;

void
hv_kbd_intr(hv_kbd_sc *sc)
{
 uint32_t c;
 if ((sc->sc_flags & HVKBD_FLAG_POLLING) != 0)
  return;

 if (KBD_IS_ACTIVE(&sc->sc_kbd) &&
     KBD_IS_BUSY(&sc->sc_kbd)) {

  (sc->sc_kbd.kb_callback.kc_func) (&sc->sc_kbd, KBDIO_KEYINPUT,
      sc->sc_kbd.kb_callback.kc_arg);
 } else {

  do {
   c = hvkbd_read_char(&sc->sc_kbd, 0);
  } while (c != NOKEY);
 }
}
