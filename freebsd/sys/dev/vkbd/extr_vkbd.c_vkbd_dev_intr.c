
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ks_task; int ks_flags; } ;
typedef TYPE_1__ vkbd_state_t ;
struct TYPE_7__ {scalar_t__ kb_data; } ;
typedef TYPE_2__ keyboard_t ;


 int TASK ;
 int VKBD_LOCK (TYPE_1__*) ;
 int VKBD_UNLOCK (TYPE_1__*) ;
 int kbdd_intr (TYPE_2__*,int *) ;
 int wakeup (int *) ;

void
vkbd_dev_intr(void *xkbd, int pending)
{
 keyboard_t *kbd = (keyboard_t *) xkbd;
 vkbd_state_t *state = (vkbd_state_t *) kbd->kb_data;

 kbdd_intr(kbd, ((void*)0));

 VKBD_LOCK(state);

 state->ks_flags &= ~TASK;
 wakeup(&state->ks_task);

 VKBD_UNLOCK(state);
}
