
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int vd_flags; int vd_width; int vd_height; int vd_winswitch; int vd_lock; TYPE_1__* vd_driver; } ;
struct TYPE_3__ {char* vd_name; } ;


 int MTX_DEF ;
 int VDF_TEXTMODE ;
 int VTY_VT ;
 int cv_init (int *,char*) ;
 TYPE_2__* main_vd ;
 int mtx_init (int *,char*,int *,int ) ;
 int printf (char*,...) ;
 int vty_enabled (int ) ;

__attribute__((used)) static void
vt_update_static(void *dummy)
{

 if (!vty_enabled(VTY_VT))
  return;
 if (main_vd->vd_driver != ((void*)0))
  printf("VT(%s): %s %ux%u\n", main_vd->vd_driver->vd_name,
      (main_vd->vd_flags & VDF_TEXTMODE) ? "text" : "resolution",
      main_vd->vd_width, main_vd->vd_height);
 else
  printf("VT: init without driver.\n");

 mtx_init(&main_vd->vd_lock, "vtdev", ((void*)0), MTX_DEF);
 cv_init(&main_vd->vd_winswitch, "vtwswt");
}
