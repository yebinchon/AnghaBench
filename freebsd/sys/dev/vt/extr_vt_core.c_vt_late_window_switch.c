
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mode; } ;
struct vt_window {TYPE_2__ vw_smode; TYPE_1__* vw_device; int vw_proc_dead_timer; } ;
struct TYPE_3__ {struct vt_window* vd_curwindow; } ;


 scalar_t__ VT_PROCESS ;
 int callout_stop (int *) ;
 int vt_window_postswitch (struct vt_window*) ;
 int vt_window_switch (struct vt_window*) ;

__attribute__((used)) static int
vt_late_window_switch(struct vt_window *vw)
{
 struct vt_window *curvw;
 int ret;

 callout_stop(&vw->vw_proc_dead_timer);

 ret = vt_window_switch(vw);
 if (ret != 0) {




  curvw = vw->vw_device->vd_curwindow;
  if (curvw->vw_smode.mode == VT_PROCESS)
   (void)vt_window_postswitch(curvw);
  return (ret);
 }


 if (vw->vw_smode.mode == VT_PROCESS) {
  ret = vt_window_postswitch(vw);
 }
 return (ret);
}
