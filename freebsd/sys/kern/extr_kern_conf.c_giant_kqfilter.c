
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {int dummy; } ;
struct cdevsw {TYPE_1__* d_gianttrick; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int (* d_kqfilter ) (struct cdev*,struct knote*) ;} ;


 int ENXIO ;
 int Giant ;
 struct cdevsw* dev_refthread (struct cdev*,int*) ;
 int dev_relthread (struct cdev*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct cdev*,struct knote*) ;

__attribute__((used)) static int
giant_kqfilter(struct cdev *dev, struct knote *kn)
{
 struct cdevsw *dsw;
 int ref, retval;

 dsw = dev_refthread(dev, &ref);
 if (dsw == ((void*)0))
  return (ENXIO);
 mtx_lock(&Giant);
 retval = dsw->d_gianttrick->d_kqfilter(dev, kn);
 mtx_unlock(&Giant);
 dev_relthread(dev, ref);
 return (retval);
}
