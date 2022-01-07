
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;
struct TYPE_8__ {scalar_t__ ks_inq_length; } ;
typedef TYPE_2__ kbdmux_state_t ;


 int FALSE ;
 int KBDMUX_LOCK (TYPE_2__*) ;
 int KBDMUX_UNLOCK (TYPE_2__*) ;
 int KBD_IS_ACTIVE (TYPE_1__*) ;
 int TRUE ;

__attribute__((used)) static int
kbdmux_check(keyboard_t *kbd)
{
 kbdmux_state_t *state = (kbdmux_state_t *) kbd->kb_data;
 int ready;

 if (!KBD_IS_ACTIVE(kbd))
  return (FALSE);

 KBDMUX_LOCK(state);
 ready = (state->ks_inq_length > 0) ? TRUE : FALSE;
 KBDMUX_UNLOCK(state);

 return (ready);
}
