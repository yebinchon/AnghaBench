
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vkbd_state_t ;
struct TYPE_3__ {scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 int VKBD_LOCK (int *) ;
 int VKBD_UNLOCK (int *) ;
 int vkbd_clear_state_locked (int *) ;

__attribute__((used)) static void
vkbd_clear_state(keyboard_t *kbd)
{
 vkbd_state_t *state = (vkbd_state_t *) kbd->kb_data;

 VKBD_LOCK(state);
 vkbd_clear_state_locked(state);
 VKBD_UNLOCK(state);
}
