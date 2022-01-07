
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {scalar_t__ si_threadcount; int si_name; } ;


 int KASSERT (int,char*) ;
 int MA_NOTOWNED ;
 int atomic_subtract_rel_long (scalar_t__*,int) ;
 int devmtx ;
 int mtx_assert (int *,int ) ;

void
dev_relthread(struct cdev *dev, int ref)
{

 mtx_assert(&devmtx, MA_NOTOWNED);
 if (!ref)
  return;
 KASSERT(dev->si_threadcount > 0,
     ("%s threadcount is wrong", dev->si_name));
 atomic_subtract_rel_long(&dev->si_threadcount, 1);
}
