
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct pfilioc_list {int dummy; } ;
struct pfilioc_link {int dummy; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int EINVAL ;



 int TD_TO_VNET (struct thread*) ;
 int pfilioc_link (struct pfilioc_link*) ;
 int pfilioc_listheads (struct pfilioc_list*) ;
 int pfilioc_listhooks (struct pfilioc_list*) ;

__attribute__((used)) static int
pfil_ioctl(struct cdev *dev, u_long cmd, caddr_t addr, int flags,
    struct thread *td)
{
 int error;

 CURVNET_SET(TD_TO_VNET(td));
 error = 0;
 switch (cmd) {
 case 129:
  error = pfilioc_listheads((struct pfilioc_list *)addr);
  break;
 case 128:
  error = pfilioc_listhooks((struct pfilioc_list *)addr);
  break;
 case 130:
  error = pfilioc_link((struct pfilioc_link *)addr);
  break;
 default:
  error = EINVAL;
  break;
 }
 CURVNET_RESTORE();
 return (error);
}
