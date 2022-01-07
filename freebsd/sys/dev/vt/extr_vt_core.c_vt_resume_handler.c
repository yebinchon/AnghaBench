
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vt_device {int vd_flags; TYPE_1__* vd_driver; } ;
struct TYPE_2__ {int (* vd_resume ) (struct vt_device*) ;} ;


 int VDF_SUSPENDED ;
 int stub1 (struct vt_device*) ;

__attribute__((used)) static void
vt_resume_handler(void *priv)
{
 struct vt_device *vd;

 vd = priv;
 if (vd->vd_driver != ((void*)0) && vd->vd_driver->vd_resume != ((void*)0))
  vd->vd_driver->vd_resume(vd);
 vd->vd_flags &= ~VDF_SUSPENDED;
}
