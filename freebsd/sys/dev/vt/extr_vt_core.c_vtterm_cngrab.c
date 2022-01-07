
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_window {int vw_kbdmode; int vw_prev_kbdmode; int vw_grabbed; struct vt_device* vw_device; } ;
struct vt_device {int vd_keyboard; } ;
struct terminal {struct vt_window* tm_softc; } ;
typedef int keyboard_t ;


 int K_XLATE ;
 int TRUE ;
 int cold ;
 int * kbd_get_keyboard (int ) ;
 int kbdd_enable (int *) ;
 int kbdd_poll (int *,int ) ;
 int vt_update_kbd_mode (struct vt_window*,int *) ;
 int vt_window_switch (struct vt_window*) ;

__attribute__((used)) static void
vtterm_cngrab(struct terminal *tm)
{
 struct vt_device *vd;
 struct vt_window *vw;
 keyboard_t *kbd;

 vw = tm->tm_softc;
 vd = vw->vw_device;

 if (!cold)
  vt_window_switch(vw);

 kbd = kbd_get_keyboard(vd->vd_keyboard);
 if (kbd == ((void*)0))
  return;

 if (vw->vw_grabbed++ > 0)
  return;





 kbdd_enable(kbd);


 vw->vw_prev_kbdmode = vw->vw_kbdmode;
 vw->vw_kbdmode = K_XLATE;
 vt_update_kbd_mode(vw, kbd);

 kbdd_poll(kbd, TRUE);
}
