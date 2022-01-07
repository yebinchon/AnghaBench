
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VTY_SC ;
 int smdev_evdev_init () ;
 int smdev_ttydevsw ;
 int sysmouse_tty ;
 int tty_alloc (int *,int *) ;
 int tty_makedev (int ,int *,char*) ;
 int vty_enabled (int ) ;

__attribute__((used)) static void
sm_attach_mouse(void *unused)
{
 if (!vty_enabled(VTY_SC))
  return;
 sysmouse_tty = tty_alloc(&smdev_ttydevsw, ((void*)0));
 tty_makedev(sysmouse_tty, ((void*)0), "sysmouse");



}
