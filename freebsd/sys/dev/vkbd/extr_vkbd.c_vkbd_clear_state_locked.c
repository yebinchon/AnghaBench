
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cc; scalar_t__ tail; scalar_t__ head; } ;
struct TYPE_5__ {TYPE_2__ ks_inq; int ks_wsel; scalar_t__ ks_composed_char; scalar_t__ ks_accents; int ks_state; scalar_t__ ks_polling; int ks_flags; } ;
typedef TYPE_1__ vkbd_state_t ;


 int COMPOSE ;
 int LOCK_MASK ;
 int MA_OWNED ;
 scalar_t__ PZERO ;
 int VKBD_LOCK_ASSERT (TYPE_1__*,int ) ;
 int selwakeuppri (int *,scalar_t__) ;
 int wakeup (TYPE_2__*) ;

__attribute__((used)) static void
vkbd_clear_state_locked(vkbd_state_t *state)
{
 VKBD_LOCK_ASSERT(state, MA_OWNED);

 state->ks_flags &= ~COMPOSE;
 state->ks_polling = 0;
 state->ks_state &= LOCK_MASK;
 state->ks_accents = 0;
 state->ks_composed_char = 0;



 state->ks_inq.head = state->ks_inq.tail = state->ks_inq.cc = 0;
 selwakeuppri(&state->ks_wsel, PZERO + 1);
 wakeup(&state->ks_inq);
}
