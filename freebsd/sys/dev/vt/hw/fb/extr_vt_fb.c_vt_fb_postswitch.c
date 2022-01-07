
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_device {struct fb_info* vd_softc; } ;
struct fb_info {int fb_priv; int (* enter ) (int ) ;} ;


 int stub1 (int ) ;

void
vt_fb_postswitch(struct vt_device *vd)
{
 struct fb_info *info;

 info = vd->vd_softc;

 if (info->enter != ((void*)0))
  info->enter(info->fb_priv);
}
