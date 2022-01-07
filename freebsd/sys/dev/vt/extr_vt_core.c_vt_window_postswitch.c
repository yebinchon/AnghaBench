
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_window {int dummy; } ;


 int signal_vt_acq (struct vt_window*) ;

__attribute__((used)) static int
vt_window_postswitch(struct vt_window *vw)
{

 signal_vt_acq(vw);
 return (0);
}
