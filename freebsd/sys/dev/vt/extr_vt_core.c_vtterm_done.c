
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vt_window {struct vt_device* vw_device; } ;
struct vt_device {int vd_flags; TYPE_1__* vd_driver; struct vt_window* vd_curwindow; } ;
struct terminal {struct vt_window* tm_softc; } ;
struct TYPE_2__ {int (* vd_postswitch ) (struct vt_device*) ;} ;


 int VDF_ASYNC ;
 int VDF_INVALID ;
 int VDF_SPLASH ;
 scalar_t__ kdb_active ;
 int * panicstr ;
 int stub1 (struct vt_device*) ;
 int vt_flush (struct vt_device*) ;

__attribute__((used)) static void
vtterm_done(struct terminal *tm)
{
 struct vt_window *vw = tm->tm_softc;
 struct vt_device *vd = vw->vw_device;

 if (kdb_active || panicstr != ((void*)0)) {

  if (vd->vd_curwindow != vw) {
   vd->vd_curwindow = vw;
   vd->vd_flags |= VDF_INVALID;
   if (vd->vd_driver->vd_postswitch)
    vd->vd_driver->vd_postswitch(vd);
  }
  vd->vd_flags &= ~VDF_SPLASH;
  vt_flush(vd);
 } else if (!(vd->vd_flags & VDF_ASYNC)) {
  vt_flush(vd);
 }
}
