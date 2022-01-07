
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_device {scalar_t__ vd_savedwindow; scalar_t__ vd_curwindow; scalar_t__* vd_windows; int vd_lock; int vd_winswitch; } ;


 size_t VT_CONSWINDOW ;
 int VT_LOCK (struct vt_device*) ;
 int VT_UNLOCK (struct vt_device*) ;
 int cv_wait_sig (int *,int *) ;
 int vt_proc_window_switch (scalar_t__) ;
 scalar_t__ vt_suspendswitch ;

void
vt_suspend(struct vt_device *vd)
{
 int error;

 if (vt_suspendswitch == 0)
  return;

 vd->vd_savedwindow = vd->vd_curwindow;

 vt_proc_window_switch(vd->vd_windows[VT_CONSWINDOW]);


 error = 0;
 VT_LOCK(vd);
 while (vd->vd_curwindow != vd->vd_windows[VT_CONSWINDOW] && error == 0)
  error = cv_wait_sig(&vd->vd_winswitch, &vd->vd_lock);
 VT_UNLOCK(vd);
}
