
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_window {int vw_kbdmode; } ;
typedef int keyboard_t ;
typedef int caddr_t ;


 int ENODEV ;
 int ENOIOCTL ;
 int KDGKBMODE ;
 int kbdd_ioctl (int *,int ,int ) ;

__attribute__((used)) static int
vt_save_kbd_mode(struct vt_window *vw, keyboard_t *kbd)
{
 int mode, ret;

 mode = 0;
 ret = kbdd_ioctl(kbd, KDGKBMODE, (caddr_t)&mode);
 if (ret == ENOIOCTL)
  ret = ENODEV;
 if (ret != 0)
  return (ret);

 vw->vw_kbdmode = mode;

 return (0);
}
