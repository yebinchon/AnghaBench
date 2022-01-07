
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
 int mpr_ioctl (struct cdev*,int ,int ,int,struct thread*) ;
 int mpr_ioctl32 (struct cdev*,int ,int ,int,struct thread*) ;

__attribute__((used)) static int
mpr_ioctl_devsw(struct cdev *dev, u_long com, caddr_t arg, int flag,
    struct thread *td)
{




 return (mpr_ioctl(dev, com, arg, flag, td));
}
