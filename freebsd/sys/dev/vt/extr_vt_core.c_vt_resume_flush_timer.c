
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_window {struct vt_device* vw_device; } ;
struct vt_device {int vd_flags; int vd_timer_armed; struct vt_window* vd_curwindow; } ;


 int VDF_ASYNC ;
 int atomic_cmpset_int (int *,int ,int) ;
 int vt_schedule_flush (struct vt_device*,int) ;

void
vt_resume_flush_timer(struct vt_window *vw, int ms)
{
 struct vt_device *vd = vw->vw_device;

 if (vd->vd_curwindow != vw)
  return;

 if (!(vd->vd_flags & VDF_ASYNC) ||
     !atomic_cmpset_int(&vd->vd_timer_armed, 0, 1))
  return;

 vt_schedule_flush(vd, ms);
}
