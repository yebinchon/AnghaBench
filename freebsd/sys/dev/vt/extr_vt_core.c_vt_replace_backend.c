
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef struct vt_driver {int (* vd_fini ) (struct vt_device*,void*) ;int (* vd_init ) (struct vt_device*) ;} const vt_driver ;
struct vt_device {int vd_flags; TYPE_1__** vd_windows; TYPE_2__* vd_curwindow; struct vt_driver const* vd_driver; int * vd_prev_softc; struct vt_driver const* vd_prev_driver; int * vd_softc; } ;
struct TYPE_4__ {int vw_terminal; } ;
struct TYPE_3__ {int vw_terminal; } ;


 int VDF_ASYNC ;
 int VDF_DOWNGRADE ;
 int VDF_SPLASH ;
 int VDF_TEXTMODE ;
 size_t VT_CONSWINDOW ;
 int VT_LOCK (struct vt_device*) ;
 int VT_UNLOCK (struct vt_device*) ;
 struct vt_device* main_vd ;
 int stub1 (struct vt_device*) ;
 int stub2 (struct vt_device*) ;
 int stub3 (struct vt_device*,void*) ;
 int termcn_cnregister (int ) ;
 int terminal_mute (int ,int) ;
 int vt_resume_flush_timer (TYPE_2__*,int ) ;
 int vt_suspend_flush_timer (struct vt_device*) ;
 int vt_upgrade (struct vt_device*) ;
 int vtterm_splash (struct vt_device*) ;

__attribute__((used)) static void
vt_replace_backend(const struct vt_driver *drv, void *softc)
{
 struct vt_device *vd;

 vd = main_vd;

 if (vd->vd_flags & VDF_ASYNC) {

  VT_LOCK(vd);
  vt_suspend_flush_timer(vd);
  VT_UNLOCK(vd);




  terminal_mute(vd->vd_curwindow->vw_terminal, 1);
 }





 VT_LOCK(vd);
 vd->vd_flags &= ~VDF_TEXTMODE;

 if (drv != ((void*)0)) {





  vd->vd_prev_driver = vd->vd_driver;
  vd->vd_prev_softc = vd->vd_softc;
  vd->vd_driver = drv;
  vd->vd_softc = softc;

  vd->vd_driver->vd_init(vd);
 } else if (vd->vd_prev_driver != ((void*)0) && vd->vd_prev_softc != ((void*)0)) {




  const struct vt_driver *old_drv;
  void *old_softc;

  old_drv = vd->vd_driver;
  old_softc = vd->vd_softc;

  vd->vd_driver = vd->vd_prev_driver;
  vd->vd_softc = vd->vd_prev_softc;
  vd->vd_prev_driver = ((void*)0);
  vd->vd_prev_softc = ((void*)0);

  vd->vd_flags |= VDF_DOWNGRADE;

  vd->vd_driver->vd_init(vd);

  if (old_drv->vd_fini)
   old_drv->vd_fini(vd, old_softc);

  vd->vd_flags &= ~VDF_DOWNGRADE;
 }

 VT_UNLOCK(vd);


 vt_upgrade(vd);






 if (vd->vd_flags & VDF_ASYNC) {

  terminal_mute(vd->vd_curwindow->vw_terminal, 0);

  vt_resume_flush_timer(vd->vd_curwindow, 0);
 }





 termcn_cnregister(vd->vd_windows[VT_CONSWINDOW]->vw_terminal);
}
