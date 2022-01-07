
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kc_arg; int (* kc_func ) (TYPE_2__*,int ,int ) ;} ;
struct TYPE_7__ {TYPE_1__ kb_callback; } ;
struct ukbd_softc {int sc_flags; scalar_t__ sc_inputs; TYPE_2__ sc_kbd; } ;


 int KBDIO_KEYINPUT ;
 scalar_t__ KBD_IS_ACTIVE (TYPE_2__*) ;
 scalar_t__ KBD_IS_BUSY (TYPE_2__*) ;
 int NOKEY ;
 int UKBD_FLAG_POLLING ;
 int UKBD_LOCK_ASSERT () ;
 int stub1 (TYPE_2__*,int ,int ) ;
 int ukbd_read_char (TYPE_2__*,int ) ;

__attribute__((used)) static void
ukbd_event_keyinput(struct ukbd_softc *sc)
{
 int c;

 UKBD_LOCK_ASSERT();

 if ((sc->sc_flags & UKBD_FLAG_POLLING) != 0)
  return;

 if (sc->sc_inputs == 0)
  return;

 if (KBD_IS_ACTIVE(&sc->sc_kbd) &&
     KBD_IS_BUSY(&sc->sc_kbd)) {

  (sc->sc_kbd.kb_callback.kc_func) (&sc->sc_kbd, KBDIO_KEYINPUT,
      sc->sc_kbd.kb_callback.kc_arg);
 } else {

  do {
   c = ukbd_read_char(&sc->sc_kbd, 0);
  } while (c != NOKEY);
 }
}
