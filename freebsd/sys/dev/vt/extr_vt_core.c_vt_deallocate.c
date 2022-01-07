
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vt_driver {char* vd_name; } ;
struct TYPE_4__ {void* vd_softc; TYPE_1__* vd_prev_driver; struct vt_driver const* vd_driver; } ;
struct TYPE_3__ {char* vd_name; } ;


 int VTY_VT ;
 TYPE_2__* main_vd ;
 int printf (char*,char*,char*) ;
 int vt_replace_backend (int *,int *) ;
 int vty_enabled (int ) ;

void
vt_deallocate(const struct vt_driver *drv, void *softc)
{

 if (!vty_enabled(VTY_VT))
  return;

 if (main_vd->vd_prev_driver == ((void*)0) ||
     main_vd->vd_driver != drv ||
     main_vd->vd_softc != softc)
  return;

 printf("VT: Switching back from \"%s\" to \"%s\".\n",
     main_vd->vd_driver->vd_name, main_vd->vd_prev_driver->vd_name);

 vt_replace_backend(((void*)0), ((void*)0));
}
