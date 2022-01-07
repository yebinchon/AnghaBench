
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * kc_arg; int * kc_func; } ;
struct TYPE_9__ {void* kb_token; TYPE_1__ kb_callback; } ;
typedef TYPE_2__ keyboard_t ;


 int EINVAL ;
 int EPERM ;
 int KBD_IS_BUSY (TYPE_2__*) ;
 int KBD_IS_VALID (TYPE_2__*) ;
 int KBD_UNBUSY (TYPE_2__*) ;
 int kbdd_clear_state (TYPE_2__*) ;
 int spltty () ;
 int splx (int) ;

int
kbd_release(keyboard_t *kbd, void *id)
{
 int error;
 int s;

 s = spltty();
 if (!KBD_IS_VALID(kbd) || !KBD_IS_BUSY(kbd)) {
  error = EINVAL;
 } else if (kbd->kb_token != id) {
  error = EPERM;
 } else {
  kbd->kb_token = ((void*)0);
  KBD_UNBUSY(kbd);
  kbd->kb_callback.kc_func = ((void*)0);
  kbd->kb_callback.kc_arg = ((void*)0);
  kbdd_clear_state(kbd);
  error = 0;
 }
 splx(s);
 return (error);
}
