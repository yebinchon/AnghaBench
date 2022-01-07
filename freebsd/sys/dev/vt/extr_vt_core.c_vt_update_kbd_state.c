
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_window {int vw_kbdstate; } ;
typedef int keyboard_t ;
typedef int caddr_t ;


 int ENODEV ;
 int ENOIOCTL ;
 int KDSKBSTATE ;
 int LOCK_MASK ;
 int kbdd_ioctl (int *,int ,int ) ;

__attribute__((used)) static int
vt_update_kbd_state(struct vt_window *vw, keyboard_t *kbd)
{
 int state, ret;

 state = vw->vw_kbdstate & LOCK_MASK;
 ret = kbdd_ioctl(kbd, KDSKBSTATE, (caddr_t)&state);
 if (ret == ENOIOCTL)
  ret = ENODEV;

 return (ret);
}
