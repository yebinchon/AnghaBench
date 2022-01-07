
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_window {int vw_flags; } ;
struct vt_device {struct vt_window* vd_curwindow; } ;




 int VWF_MOUSE_HIDE ;
 struct vt_device* main_vd ;
 int vt_mark_mouse_position_as_dirty (struct vt_device*,int) ;
 int vt_resume_flush_timer (struct vt_window*,int ) ;

void
vt_mouse_state(int show)
{
 struct vt_device *vd;
 struct vt_window *vw;

 vd = main_vd;
 vw = vd->vd_curwindow;

 switch (show) {
 case 129:
  vw->vw_flags |= VWF_MOUSE_HIDE;
  break;
 case 128:
  vw->vw_flags &= ~VWF_MOUSE_HIDE;
  break;
 }


 vt_mark_mouse_position_as_dirty(vd, 0);
 vt_resume_flush_timer(vw, 0);
}
