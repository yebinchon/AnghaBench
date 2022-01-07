
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_8__ {int sc_flags; } ;
typedef TYPE_2__ hv_kbd_sc ;


 int FALSE ;
 int HVKBD_FLAG_POLLING ;
 int HVKBD_LOCK_ASSERT () ;
 int KBD_IS_ACTIVE (TYPE_1__*) ;
 int TRUE ;
 scalar_t__ hv_kbd_prod_is_ready (TYPE_2__*) ;
 int hvkbd_do_poll (TYPE_2__*,int ) ;

__attribute__((used)) static int
hvkbd_check_char_locked(keyboard_t *kbd)
{
 HVKBD_LOCK_ASSERT();
 if (!KBD_IS_ACTIVE(kbd))
  return (FALSE);

 hv_kbd_sc *sc = kbd->kb_data;
 if (sc->sc_flags & HVKBD_FLAG_POLLING)
  hvkbd_do_poll(sc, 0);
 if (hv_kbd_prod_is_ready(sc)) {
  return (TRUE);
 }
 return (FALSE);
}
