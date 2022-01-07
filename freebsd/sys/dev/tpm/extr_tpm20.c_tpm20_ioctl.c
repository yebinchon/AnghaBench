
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {int dummy; } ;
typedef int caddr_t ;


 int ENOTTY ;

int
tpm20_ioctl(struct cdev *dev, u_long cmd, caddr_t data,
    int flags, struct thread *td)
{

 return (ENOTTY);
}
