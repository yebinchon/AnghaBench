
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int y; int x; } ;
typedef TYPE_2__ video_display_start_t ;
typedef int u_long ;
typedef int u_int ;
struct vt_device {TYPE_1__* vd_driver; struct fb_info* vd_softc; } ;
struct thread {int dummy; } ;
struct fbtype {int dummy; } ;
struct fb_info {int fb_stride; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_3__ {int (* vd_blank ) (struct vt_device*,int ) ;} ;


 int ENODEV ;
 int ENOIOCTL ;





 int TC_BLACK ;
 int bcopy (struct fb_info*,struct fbtype*,int) ;
 int stub1 (struct vt_device*,int ) ;

int
vt_fb_ioctl(struct vt_device *vd, u_long cmd, caddr_t data, struct thread *td)
{
 struct fb_info *info;
 int error = 0;

 info = vd->vd_softc;

 switch (cmd) {
 case 132:
  bcopy(info, (struct fbtype *)data, sizeof(struct fbtype));
  break;

 case 128:
  *(u_int *)data = 0;
  break;

 case 130:
  ((video_display_start_t *)data)->x = 0;
  ((video_display_start_t *)data)->y = 0;
  break;

 case 129:
  *(u_int *)data = info->fb_stride;
  break;

 case 131:
  if (vd->vd_driver->vd_blank == ((void*)0))
   return (ENODEV);
  vd->vd_driver->vd_blank(vd, TC_BLACK);
  break;

 default:
  error = ENOIOCTL;
  break;
 }

 return (error);
}
