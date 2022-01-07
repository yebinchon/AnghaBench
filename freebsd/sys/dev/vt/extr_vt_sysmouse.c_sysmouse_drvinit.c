
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GID_WHEEL ;
 int MTX_DEF ;
 int UID_ROOT ;
 int VTY_VT ;
 int cv_init (int *,char*) ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int sysmouse_cdevsw ;
 int sysmouse_evdev_init () ;
 int sysmouse_lock ;
 int sysmouse_sleep ;
 int vty_enabled (int ) ;

__attribute__((used)) static void
sysmouse_drvinit(void *unused)
{

 if (!vty_enabled(VTY_VT))
  return;
 mtx_init(&sysmouse_lock, "sysmouse", ((void*)0), MTX_DEF);
 cv_init(&sysmouse_sleep, "sysmrd");
 make_dev(&sysmouse_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600,
     "sysmouse");



}
