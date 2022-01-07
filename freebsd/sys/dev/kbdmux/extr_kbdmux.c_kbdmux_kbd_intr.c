
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_7__ {int ks_task; int ks_flags; } ;
typedef TYPE_2__ kbdmux_state_t ;


 int KBDMUX_LOCK (TYPE_2__*) ;
 int KBDMUX_UNLOCK (TYPE_2__*) ;
 int TASK ;
 int kbdd_intr (TYPE_1__*,int *) ;
 int wakeup (int *) ;

void
kbdmux_kbd_intr(void *xkbd, int pending)
{
 keyboard_t *kbd = (keyboard_t *) xkbd;
 kbdmux_state_t *state = (kbdmux_state_t *) kbd->kb_data;

 kbdd_intr(kbd, ((void*)0));

 KBDMUX_LOCK(state);

 state->ks_flags &= ~TASK;
 wakeup(&state->ks_task);

 KBDMUX_UNLOCK(state);
}
