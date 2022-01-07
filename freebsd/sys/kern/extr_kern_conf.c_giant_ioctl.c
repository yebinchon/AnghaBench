
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct cdevsw {TYPE_1__* d_gianttrick; } ;
struct cdev {int dummy; } ;
typedef int caddr_t ;
struct TYPE_2__ {int (* d_ioctl ) (struct cdev*,int ,int ,int,struct thread*) ;} ;


 int ENXIO ;
 int Giant ;
 struct cdevsw* dev_refthread (struct cdev*,int*) ;
 int dev_relthread (struct cdev*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct cdev*,int ,int ,int,struct thread*) ;

__attribute__((used)) static int
giant_ioctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag, struct thread *td)
{
 struct cdevsw *dsw;
 int ref, retval;

 dsw = dev_refthread(dev, &ref);
 if (dsw == ((void*)0))
  return (ENXIO);
 mtx_lock(&Giant);
 retval = dsw->d_gianttrick->d_ioctl(dev, cmd, data, fflag, td);
 mtx_unlock(&Giant);
 dev_relthread(dev, ref);
 return (retval);
}
