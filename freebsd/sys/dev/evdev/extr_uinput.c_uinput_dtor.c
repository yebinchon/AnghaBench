
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct uinput_cdev_state {int ucs_lock; TYPE_1__ ucs_selp; int ucs_evdev; } ;


 int M_EVDEV ;
 int evdev_free (int ) ;
 int free (void*,int ) ;
 int knlist_clear (int *,int ) ;
 int knlist_destroy (int *) ;
 int seldrain (TYPE_1__*) ;
 int sx_destroy (int *) ;

__attribute__((used)) static void
uinput_dtor(void *data)
{
 struct uinput_cdev_state *state = (struct uinput_cdev_state *)data;

 evdev_free(state->ucs_evdev);

 knlist_clear(&state->ucs_selp.si_note, 0);
 seldrain(&state->ucs_selp);
 knlist_destroy(&state->ucs_selp.si_note);
 sx_destroy(&state->ucs_lock);
 free(data, M_EVDEV);
}
