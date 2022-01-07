
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef int caddr_t ;


 scalar_t__ SV_CURPROC_FLAG (int ) ;
 int SV_ILP32 ;
 int mps_ioctl (struct cdev*,int ,int ,int,struct thread*) ;
 int mps_ioctl32 (struct cdev*,int ,int ,int,struct thread*) ;

__attribute__((used)) static int
mps_ioctl_devsw(struct cdev *dev, u_long com, caddr_t arg, int flag,
    struct thread *td)
{




 return (mps_ioctl(dev, com, arg, flag, td));
}
