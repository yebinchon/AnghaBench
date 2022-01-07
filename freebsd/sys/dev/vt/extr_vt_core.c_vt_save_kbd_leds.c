
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_window {int vw_kbdstate; } ;
typedef int keyboard_t ;
typedef int caddr_t ;


 int ENODEV ;
 int ENOIOCTL ;
 int KDGETLED ;
 int LED_MASK ;
 int kbdd_ioctl (int *,int ,int ) ;

__attribute__((used)) static int
vt_save_kbd_leds(struct vt_window *vw, keyboard_t *kbd)
{
 int leds, ret;

 leds = 0;
 ret = kbdd_ioctl(kbd, KDGETLED, (caddr_t)&leds);
 if (ret == ENOIOCTL)
  ret = ENODEV;
 if (ret != 0)
  return (ret);

 vw->vw_kbdstate &= ~LED_MASK;
 vw->vw_kbdstate |= leds & LED_MASK;

 return (0);
}
