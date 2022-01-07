
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;
typedef int kbdmux_state_t ;


 int KBDMUX_LOCK (int *) ;
 int KBDMUX_UNLOCK (int *) ;
 int kbdmux_clear_state_locked (int *) ;

__attribute__((used)) static void
kbdmux_clear_state(keyboard_t *kbd)
{
 kbdmux_state_t *state = (kbdmux_state_t *) kbd->kb_data;

 KBDMUX_LOCK(state);
 kbdmux_clear_state_locked(state);
 KBDMUX_UNLOCK(state);
}
