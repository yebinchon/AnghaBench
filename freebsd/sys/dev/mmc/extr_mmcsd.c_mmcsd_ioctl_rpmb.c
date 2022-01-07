
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int si_drv1; } ;
typedef int caddr_t ;


 int mmcsd_ioctl (int ,int ,int ,int,struct thread*) ;

__attribute__((used)) static int
mmcsd_ioctl_rpmb(struct cdev *dev, u_long cmd, caddr_t data,
    int fflag, struct thread *td)
{

 return (mmcsd_ioctl(dev->si_drv1, cmd, data, fflag, td));
}
