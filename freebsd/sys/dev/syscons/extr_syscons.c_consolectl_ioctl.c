
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int si_drv1; } ;
typedef int caddr_t ;


 int sctty_ioctl (int ,int ,int ,struct thread*) ;

__attribute__((used)) static int
consolectl_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag,
    struct thread *td)
{

 return sctty_ioctl(dev->si_drv1, cmd, data, td);
}
