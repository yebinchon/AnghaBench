
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* kc_arg; int * kc_func; } ;
struct TYPE_7__ {void* kb_token; TYPE_1__ kb_callback; } ;
typedef TYPE_2__ keyboard_t ;
typedef int kbd_callback_func_t ;


 int EINVAL ;
 int EPERM ;
 int KBD_IS_BUSY (TYPE_2__*) ;
 int KBD_IS_VALID (TYPE_2__*) ;
 int spltty () ;
 int splx (int) ;

int
kbd_change_callback(keyboard_t *kbd, void *id, kbd_callback_func_t *func,
      void *arg)
{
 int error;
 int s;

 s = spltty();
 if (!KBD_IS_VALID(kbd) || !KBD_IS_BUSY(kbd)) {
  error = EINVAL;
 } else if (kbd->kb_token != id) {
  error = EPERM;
 } else if (func == ((void*)0)) {
  error = EINVAL;
 } else {
  kbd->kb_callback.kc_func = func;
  kbd->kb_callback.kc_arg = arg;
  error = 0;
 }
 splx(s);
 return (error);
}
