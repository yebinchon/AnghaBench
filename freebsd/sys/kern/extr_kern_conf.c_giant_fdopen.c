
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct file {int dummy; } ;
struct cdevsw {TYPE_1__* d_gianttrick; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int (* d_fdopen ) (struct cdev*,int,struct thread*,struct file*) ;} ;


 int ENXIO ;
 int Giant ;
 struct cdevsw* dev_refthread (struct cdev*,int*) ;
 int dev_relthread (struct cdev*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct cdev*,int,struct thread*,struct file*) ;

__attribute__((used)) static int
giant_fdopen(struct cdev *dev, int oflags, struct thread *td, struct file *fp)
{
 struct cdevsw *dsw;
 int ref, retval;

 dsw = dev_refthread(dev, &ref);
 if (dsw == ((void*)0))
  return (ENXIO);
 mtx_lock(&Giant);
 retval = dsw->d_gianttrick->d_fdopen(dev, oflags, td, fp);
 mtx_unlock(&Giant);
 dev_relthread(dev, ref);
 return (retval);
}
