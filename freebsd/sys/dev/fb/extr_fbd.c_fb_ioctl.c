
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int y; int x; } ;
typedef TYPE_1__ video_display_start_t ;
typedef int u_long ;
typedef int u_int ;
struct thread {int dummy; } ;
struct fbtype {int dummy; } ;
struct fb_info {int (* setblankmode ) (int ,int) ;int fb_priv; int fb_stride; } ;
struct cdev {struct fb_info* si_drv1; } ;
typedef scalar_t__ caddr_t ;


 int ENOIOCTL ;





 int bcopy (struct fb_info*,struct fbtype*,int) ;
 int stub1 (int ,int) ;

__attribute__((used)) static int
fb_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag,
    struct thread *td)
{
 struct fb_info *info;
 int error;

 error = 0;
 info = dev->si_drv1;

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
  if (info->setblankmode != ((void*)0))
   error = info->setblankmode(info->fb_priv, *(int *)data);
  break;

 default:
  error = ENOIOCTL;
  break;
 }
 return (error);
}
