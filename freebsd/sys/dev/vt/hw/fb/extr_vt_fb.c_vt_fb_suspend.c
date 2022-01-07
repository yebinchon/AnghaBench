
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_device {int dummy; } ;


 int vt_suspend (struct vt_device*) ;

void
vt_fb_suspend(struct vt_device *vd)
{

 vt_suspend(vd);
}
