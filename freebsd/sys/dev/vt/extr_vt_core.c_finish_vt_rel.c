
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_window {int vw_flags; int vw_switch_to; int vw_proc_dead_timer; } ;


 int EINVAL ;
 int VWF_SWWAIT_REL ;
 int callout_drain (int *) ;
 int vt_late_window_switch (int ) ;

__attribute__((used)) static int
finish_vt_rel(struct vt_window *vw, int release, int *s)
{

 if (vw->vw_flags & VWF_SWWAIT_REL) {
  vw->vw_flags &= ~VWF_SWWAIT_REL;
  if (release) {
   callout_drain(&vw->vw_proc_dead_timer);
   (void)vt_late_window_switch(vw->vw_switch_to);
  }
  return (0);
 }
 return (EINVAL);
}
