
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef int caddr_t ;


 int ENOIOCTL ;

 int g_ctl_ioctl_ctl (struct cdev*,int,int ,int,struct thread*) ;

__attribute__((used)) static int
g_ctl_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag, struct thread *td)
{
 int error;

 switch(cmd) {
 case 128:
  error = g_ctl_ioctl_ctl(dev, cmd, data, fflag, td);
  break;
 default:
  error = ENOIOCTL;
  break;
 }
 return (error);

}
