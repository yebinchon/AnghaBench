
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct uinput_cdev_state {int ucs_blocked; int ucs_selected; TYPE_1__ ucs_selp; } ;


 int KNOTE_LOCKED (int *,int ) ;
 int UINPUT_LOCK_ASSERT (struct uinput_cdev_state*) ;
 int selwakeup (TYPE_1__*) ;
 int wakeup (struct uinput_cdev_state*) ;

__attribute__((used)) static void
uinput_notify(struct uinput_cdev_state *state)
{

 UINPUT_LOCK_ASSERT(state);

 if (state->ucs_blocked) {
  state->ucs_blocked = 0;
  wakeup(state);
 }
 if (state->ucs_selected) {
  state->ucs_selected = 0;
  selwakeup(&state->ucs_selp);
 }
 KNOTE_LOCKED(&state->ucs_selp.si_note, 0);
}
