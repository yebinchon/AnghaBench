
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vkbd_state_t ;
struct TYPE_4__ {int kb_count; scalar_t__ kb_data; } ;
typedef TYPE_1__ keyboard_t ;


 scalar_t__ KBD_IS_ACTIVE (TYPE_1__*) ;
 int VKBD_LOCK (int *) ;
 int VKBD_UNLOCK (int *) ;
 int vkbd_data_read (int *,int) ;

__attribute__((used)) static int
vkbd_read(keyboard_t *kbd, int wait)
{
 vkbd_state_t *state = (vkbd_state_t *) kbd->kb_data;
 int c;

 VKBD_LOCK(state);
 c = vkbd_data_read(state, wait);
 VKBD_UNLOCK(state);

 if (c != -1)
  kbd->kb_count ++;

 return (KBD_IS_ACTIVE(kbd)? c : -1);
}
