
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_window {int vw_flags; struct vt_device* vw_device; } ;
struct vt_device {int vd_flags; } ;
struct terminal {struct vt_window* tm_softc; } ;


 int VDF_SPLASH ;
 int VT_LOCK (struct vt_device*) ;
 int VT_UNLOCK (struct vt_device*) ;
 int VWF_OPENED ;

__attribute__((used)) static void
vtterm_opened(struct terminal *tm, int opened)
{
 struct vt_window *vw = tm->tm_softc;
 struct vt_device *vd = vw->vw_device;

 VT_LOCK(vd);
 vd->vd_flags &= ~VDF_SPLASH;
 if (opened)
  vw->vw_flags |= VWF_OPENED;
 else {
  vw->vw_flags &= ~VWF_OPENED;

 }
 VT_UNLOCK(vd);
}
