
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct wtap_hal {int hal_md; } ;
struct TYPE_3__ {struct wtap_hal* wp_hal; } ;
struct visibility_plugin {TYPE_1__ base; } ;
struct thread {int dummy; } ;
struct link {int op; int id1; int id2; } ;
struct cdev {scalar_t__ si_drv1; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_4__ {int td_ucred; } ;


 int CRED_TO_VNET (int ) ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int DWTAP_PRINTF (char*) ;
 int EINVAL ;


 int add_link (struct visibility_plugin*,struct link*) ;
 TYPE_2__* curthread ;
 int del_link (struct visibility_plugin*,struct link*) ;
 int medium_close (int ) ;
 int medium_open (int ) ;
 int printf (char*,int,int,int) ;

int
vis_ioctl(struct cdev *sdev, u_long cmd, caddr_t data,
    int fflag, struct thread *td)
{
 struct visibility_plugin *vis_plugin =
     (struct visibility_plugin *) sdev->si_drv1;
 struct wtap_hal *hal = vis_plugin->base.wp_hal;
 struct link l;
 int op;
 int error = 0;

 CURVNET_SET(CRED_TO_VNET(curthread->td_ucred));
 switch(cmd) {
 case 128:
  op = *(int *)data;
  if(op == 0)
   medium_close(hal->hal_md);
  else
   medium_open(hal->hal_md);
  break;
 case 129:
  l = *(struct link *)data;
  if(l.op == 0)
   del_link(vis_plugin, &l);
  else
   add_link(vis_plugin, &l);



  break;
 default:
  DWTAP_PRINTF("Unknown WTAP IOCTL\n");
  error = EINVAL;
 }

 CURVNET_RESTORE();
 return error;
}
