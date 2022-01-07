
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ks_polling; } ;
typedef TYPE_1__ vkbd_state_t ;
struct TYPE_7__ {scalar_t__ kb_data; } ;
typedef TYPE_2__ keyboard_t ;


 int VKBD_LOCK (TYPE_1__*) ;
 int VKBD_UNLOCK (TYPE_1__*) ;

__attribute__((used)) static int
vkbd_poll(keyboard_t *kbd, int on)
{
 vkbd_state_t *state = ((void*)0);

 state = (vkbd_state_t *) kbd->kb_data;

 VKBD_LOCK(state);

 if (on)
  state->ks_polling ++;
 else
  state->ks_polling --;

 VKBD_UNLOCK(state);

 return (0);
}
