
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_device {int * vd_savedwindow; } ;


 int vt_proc_window_switch (int *) ;
 scalar_t__ vt_suspendswitch ;

void
vt_resume(struct vt_device *vd)
{

 if (vt_suspendswitch == 0)
  return;

 vt_proc_window_switch(vd->vd_savedwindow);
 vd->vd_savedwindow = ((void*)0);
}
