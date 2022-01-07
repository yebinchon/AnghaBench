
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_window {int dummy; } ;


 int vt_late_window_switch (struct vt_window*) ;

__attribute__((used)) static void
vt_switch_timer(void *arg)
{

 (void)vt_late_window_switch((struct vt_window *)arg);
}
