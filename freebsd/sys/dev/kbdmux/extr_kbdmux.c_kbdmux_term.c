
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int ks_flags; struct TYPE_13__* kb_fkeytab; struct TYPE_13__* kb_accentmap; struct TYPE_13__* kb_keymap; int ks_evdev; int * kbd; int ks_kbds; int ks_timo; scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;
typedef TYPE_1__ kbdmux_state_t ;
typedef TYPE_1__ kbdmux_kbd_t ;


 int KBDMUX_LOCK (TYPE_1__*) ;
 int KBDMUX_LOCK_DESTROY (TYPE_1__*) ;
 int KBDMUX_SLEEP (TYPE_1__*,int ,char*,int ) ;
 int KBDMUX_UNLOCK (TYPE_1__*) ;
 int M_KBDMUX ;
 TYPE_1__* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int TASK ;
 int bzero (TYPE_1__*,int) ;
 int callout_stop (int *) ;
 int evdev_free (int ) ;
 int free (TYPE_1__*,int ) ;
 int kbd_release (int *,int **) ;
 int kbd_unregister (TYPE_1__*) ;
 int ks_task ;
 int next ;

__attribute__((used)) static int
kbdmux_term(keyboard_t *kbd)
{
 kbdmux_state_t *state = (kbdmux_state_t *) kbd->kb_data;
 kbdmux_kbd_t *k;

 KBDMUX_LOCK(state);


 callout_stop(&state->ks_timo);


 while (state->ks_flags & TASK)
  KBDMUX_SLEEP(state, ks_task, "kbdmuxc", 0);


 while ((k = SLIST_FIRST(&state->ks_kbds)) != ((void*)0)) {
  kbd_release(k->kbd, &k->kbd);
  SLIST_REMOVE_HEAD(&state->ks_kbds, next);

  k->kbd = ((void*)0);

  free(k, M_KBDMUX);
 }

 KBDMUX_UNLOCK(state);

 kbd_unregister(kbd);





 KBDMUX_LOCK_DESTROY(state);
 bzero(state, sizeof(*state));
 free(state, M_KBDMUX);

 free(kbd->kb_keymap, M_KBDMUX);
 free(kbd->kb_accentmap, M_KBDMUX);
 free(kbd->kb_fkeytab, M_KBDMUX);
 free(kbd, M_KBDMUX);

 return (0);
}
