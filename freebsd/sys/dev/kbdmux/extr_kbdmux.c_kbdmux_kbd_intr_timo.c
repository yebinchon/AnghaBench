
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ks_inq_length; int ks_flags; int ks_timo; } ;
typedef TYPE_1__ kbdmux_state_t ;


 int KBDMUX_LOCK_ASSERT (TYPE_1__*,int ) ;
 scalar_t__ KBDMUX_QUEUE_INTR (TYPE_1__*) ;
 int MA_OWNED ;
 int TASK ;
 int TICKS ;
 int callout_active (int *) ;
 int callout_deactivate (int *) ;
 scalar_t__ callout_pending (int *) ;
 int callout_reset (int *,int ,void (*) (void*),TYPE_1__*) ;

void
kbdmux_kbd_intr_timo(void *xstate)
{
 kbdmux_state_t *state = (kbdmux_state_t *) xstate;

 KBDMUX_LOCK_ASSERT(state, MA_OWNED);

 if (callout_pending(&state->ks_timo))
  return;

 if (!callout_active(&state->ks_timo))
  return;

 callout_deactivate(&state->ks_timo);


 if (state->ks_inq_length > 0 && !(state->ks_flags & TASK) &&
     KBDMUX_QUEUE_INTR(state) == 0)
  state->ks_flags |= TASK;


 callout_reset(&state->ks_timo, TICKS, kbdmux_kbd_intr_timo, state);
}
