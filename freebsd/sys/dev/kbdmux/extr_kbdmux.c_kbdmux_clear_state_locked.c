
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ks_inq_length; scalar_t__ ks_composed_char; scalar_t__ ks_accents; int ks_state; scalar_t__ ks_polling; int ks_flags; } ;
typedef TYPE_1__ kbdmux_state_t ;


 int COMPOSE ;
 int KBDMUX_LOCK_ASSERT (TYPE_1__*,int ) ;
 int LOCK_MASK ;
 int MA_OWNED ;

__attribute__((used)) static void
kbdmux_clear_state_locked(kbdmux_state_t *state)
{
 KBDMUX_LOCK_ASSERT(state, MA_OWNED);

 state->ks_flags &= ~COMPOSE;
 state->ks_polling = 0;
 state->ks_state &= LOCK_MASK;
 state->ks_accents = 0;
 state->ks_composed_char = 0;

 state->ks_inq_length = 0;
}
