
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int td_ucred; } ;


 int CRED_TO_VNET (int ) ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int DWTAP_PRINTF (char*) ;
 int EINVAL ;


 TYPE_1__* curthread ;
 int free_wtap (int ,int) ;
 int hal ;
 int new_wtap (int ,int) ;

int
wtap_ioctl(struct cdev *dev, u_long cmd, caddr_t data,
    int fflag, struct thread *td)
{
 int error = 0;

 CURVNET_SET(CRED_TO_VNET(curthread->td_ucred));

 switch(cmd) {
 case 129:
  if(new_wtap(hal, *(int *)data))
   error = EINVAL;
  break;
 case 128:
  if(free_wtap(hal, *(int *)data))
   error = EINVAL;
  break;
 default:
  DWTAP_PRINTF("Unknown WTAP IOCTL\n");
  error = EINVAL;
 }

 CURVNET_RESTORE();
 return error;
}
