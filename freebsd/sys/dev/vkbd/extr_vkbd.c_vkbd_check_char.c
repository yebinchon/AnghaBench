
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ks_flags; scalar_t__ ks_composed_char; } ;
typedef TYPE_1__ vkbd_state_t ;
struct TYPE_9__ {scalar_t__ kb_data; } ;
typedef TYPE_2__ keyboard_t ;


 int COMPOSE ;
 int FALSE ;
 int KBD_IS_ACTIVE (TYPE_2__*) ;
 int TRUE ;
 int VKBD_LOCK (TYPE_1__*) ;
 int VKBD_UNLOCK (TYPE_1__*) ;
 int vkbd_data_ready (TYPE_1__*) ;

__attribute__((used)) static int
vkbd_check_char(keyboard_t *kbd)
{
 vkbd_state_t *state = ((void*)0);
 int ready;

 if (!KBD_IS_ACTIVE(kbd))
  return (FALSE);

 state = (vkbd_state_t *) kbd->kb_data;

 VKBD_LOCK(state);
 if (!(state->ks_flags & COMPOSE) && (state->ks_composed_char > 0))
  ready = TRUE;
 else
  ready = vkbd_data_ready(state);
 VKBD_UNLOCK(state);

 return (ready);
}
