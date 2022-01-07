
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {int dummy; } ;
struct cdevsw {TYPE_1__* d_gianttrick; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int (* d_read ) (struct cdev*,struct uio*,int) ;} ;


 int ENXIO ;
 int Giant ;
 struct cdevsw* dev_refthread (struct cdev*,int*) ;
 int dev_relthread (struct cdev*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct cdev*,struct uio*,int) ;

__attribute__((used)) static int
giant_read(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct cdevsw *dsw;
 int ref, retval;

 dsw = dev_refthread(dev, &ref);
 if (dsw == ((void*)0))
  return (ENXIO);
 mtx_lock(&Giant);
 retval = dsw->d_gianttrick->d_read(dev, uio, ioflag);
 mtx_unlock(&Giant);
 dev_relthread(dev, ref);
 return (retval);
}
