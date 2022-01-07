
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_window {unsigned int vw_mouse_level; int vw_buf; } ;
struct terminal {struct vt_window* tm_softc; } ;





 int vt_resume_flush_timer (struct vt_window*,int ) ;
 int vtbuf_cursor_visibility (int *,unsigned int) ;

__attribute__((used)) static void
vtterm_param(struct terminal *tm, int cmd, unsigned int arg)
{
 struct vt_window *vw = tm->tm_softc;

 switch (cmd) {
 case 129:






  arg = (arg == 1) ? 0 : 1;

 case 128:
  vtbuf_cursor_visibility(&vw->vw_buf, arg);
  vt_resume_flush_timer(vw, 0);
  break;
 case 130:
  vw->vw_mouse_level = arg;
  break;
 }
}
