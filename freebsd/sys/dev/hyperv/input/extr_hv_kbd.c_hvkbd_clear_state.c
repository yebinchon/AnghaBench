
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_5__ {int sc_flags; int sc_state; } ;
typedef TYPE_2__ hv_kbd_sc ;


 int HVKBD_FLAG_POLLING ;
 int LOCK_MASK ;

__attribute__((used)) static void
hvkbd_clear_state(keyboard_t *kbd)
{
 hv_kbd_sc *sc = kbd->kb_data;
 sc->sc_state &= LOCK_MASK;
 sc->sc_flags &= ~HVKBD_FLAG_POLLING;
}
