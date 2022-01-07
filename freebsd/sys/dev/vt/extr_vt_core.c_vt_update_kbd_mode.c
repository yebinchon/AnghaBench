
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_window {int vw_kbdmode; } ;
typedef int keyboard_t ;
typedef int caddr_t ;


 int ENODEV ;
 int ENOIOCTL ;
 int KDSKBMODE ;
 int kbdd_ioctl (int *,int ,int ) ;

__attribute__((used)) static int
vt_update_kbd_mode(struct vt_window *vw, keyboard_t *kbd)
{
 int ret;

 ret = kbdd_ioctl(kbd, KDSKBMODE, (caddr_t)&vw->vw_kbdmode);
 if (ret == ENOIOCTL)
  ret = ENODEV;

 return (ret);
}
