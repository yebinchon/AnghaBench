
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int vt_deallocate (int *,struct fb_info*) ;
 int vt_fb_driver ;

int
vt_fb_detach(struct fb_info *info)
{

 vt_deallocate(&vt_fb_driver, info);

 return (0);
}
