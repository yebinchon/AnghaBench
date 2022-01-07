
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vt_window {int vw_flags; int vd_flags; int vd_timer; int vd_timer_armed; int vd_lock; struct vt_window** vd_windows; struct vt_window* vd_curwindow; int vw_terminal; int vw_proc_dead_timer; } ;
struct vt_device {int vw_flags; int vd_flags; int vd_timer; int vd_timer_armed; int vd_lock; struct vt_device** vd_windows; struct vt_device* vd_curwindow; int vw_terminal; int vw_proc_dead_timer; } ;
struct TYPE_2__ {int * vd_driver; } ;


 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,struct vt_window*,int ) ;
 int SHUTDOWN_PRI_DEFAULT ;
 int VDF_ASYNC ;
 int VTY_VT ;
 size_t VT_CONSWINDOW ;
 int VT_LOCK (struct vt_window*) ;
 unsigned int VT_MAXWINDOWS ;
 int VT_TIMERFREQ ;
 int VT_UNIT (struct vt_window*) ;
 int VT_UNLOCK (struct vt_window*) ;
 int VWF_CONSOLE ;
 int VWF_READY ;
 int atomic_add_acq_int (int *,int) ;
 int callout_init (int *,int ) ;
 int callout_init_mtx (int *,int *,int ) ;
 int callout_reset (int *,int,int ,struct vt_window*) ;
 int hz ;
 TYPE_1__* main_vd ;
 int power_resume ;
 int power_suspend_early ;
 int shutdown_pre_sync ;
 int terminal_maketty (int ,char*,int ) ;
 int vt_allocate_keyboard (struct vt_window*) ;
 struct vt_window* vt_allocate_window (struct vt_window*,unsigned int) ;
 int vt_resize (struct vt_window*) ;
 int vt_resume_handler ;
 int vt_suspend_handler ;
 int vt_timer ;
 int vt_window_switch ;
 int vty_enabled (int ) ;

void
vt_upgrade(struct vt_device *vd)
{
 struct vt_window *vw;
 unsigned int i;
 int register_handlers;

 if (!vty_enabled(VTY_VT))
  return;
 if (main_vd->vd_driver == ((void*)0))
  return;

 for (i = 0; i < VT_MAXWINDOWS; i++) {
  vw = vd->vd_windows[i];
  if (vw == ((void*)0)) {

   vw = vt_allocate_window(vd, i);
  }
  if (!(vw->vw_flags & VWF_READY)) {
   callout_init(&vw->vw_proc_dead_timer, 0);
   terminal_maketty(vw->vw_terminal, "v%r", VT_UNIT(vw));
   vw->vw_flags |= VWF_READY;
   if (vw->vw_flags & VWF_CONSOLE) {

    EVENTHANDLER_REGISTER(shutdown_pre_sync,
        vt_window_switch, vw, SHUTDOWN_PRI_DEFAULT);
   }
  }

 }
 VT_LOCK(vd);
 if (vd->vd_curwindow == ((void*)0))
  vd->vd_curwindow = vd->vd_windows[VT_CONSWINDOW];

 register_handlers = 0;
 if (!(vd->vd_flags & VDF_ASYNC)) {

  vt_allocate_keyboard(vd);


  callout_init_mtx(&vd->vd_timer, &vd->vd_lock, 0);
  atomic_add_acq_int(&vd->vd_timer_armed, 1);
  vd->vd_flags |= VDF_ASYNC;
  callout_reset(&vd->vd_timer, hz / VT_TIMERFREQ, vt_timer, vd);
  register_handlers = 1;
 }

 VT_UNLOCK(vd);


 vt_resize(vd);

 if (register_handlers) {

  EVENTHANDLER_REGISTER(power_suspend_early, vt_suspend_handler,
      vd, EVENTHANDLER_PRI_ANY);
  EVENTHANDLER_REGISTER(power_resume, vt_resume_handler, vd,
      EVENTHANDLER_PRI_ANY);
 }
}
