
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vkbd_state_t ;
struct TYPE_4__ {scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int FALSE ;
 int KBD_IS_ACTIVE (TYPE_1__*) ;
 int VKBD_LOCK (int *) ;
 int VKBD_UNLOCK (int *) ;
 int vkbd_data_ready (int *) ;

__attribute__((used)) static int
vkbd_check(keyboard_t *kbd)
{
 vkbd_state_t *state = ((void*)0);
 int ready;

 if (!KBD_IS_ACTIVE(kbd))
  return (FALSE);

 state = (vkbd_state_t *) kbd->kb_data;

 VKBD_LOCK(state);
 ready = vkbd_data_ready(state);
 VKBD_UNLOCK(state);

 return (ready);
}
