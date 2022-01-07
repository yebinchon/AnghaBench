
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ks_flags; int ks_rsel; } ;
typedef TYPE_1__ vkbd_state_t ;


 int MA_OWNED ;
 scalar_t__ PZERO ;
 int STATUS ;
 int VKBD_LOCK_ASSERT (TYPE_1__*,int ) ;
 int selwakeuppri (int *,scalar_t__) ;
 int wakeup (int*) ;

__attribute__((used)) static void
vkbd_status_changed(vkbd_state_t *state)
{
 VKBD_LOCK_ASSERT(state, MA_OWNED);

 if (!(state->ks_flags & STATUS)) {
  state->ks_flags |= STATUS;
  selwakeuppri(&state->ks_rsel, PZERO + 1);
  wakeup(&state->ks_flags);
 }
}
