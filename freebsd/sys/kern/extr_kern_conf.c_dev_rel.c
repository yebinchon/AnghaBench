
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {scalar_t__ si_refcount; int * si_devsw; } ;


 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct cdev*,int ) ;
 int MA_NOTOWNED ;
 int dev_lock () ;
 int dev_unlock () ;
 int devfs_free (struct cdev*) ;
 int devmtx ;
 int devtoname (struct cdev*) ;
 int mtx_assert (int *,int ) ;
 int si_list ;

void
dev_rel(struct cdev *dev)
{
 int flag = 0;

 mtx_assert(&devmtx, MA_NOTOWNED);
 dev_lock();
 dev->si_refcount--;
 KASSERT(dev->si_refcount >= 0,
     ("dev_rel(%s) gave negative count", devtoname(dev)));
 if (dev->si_devsw == ((void*)0) && dev->si_refcount == 0) {
  LIST_REMOVE(dev, si_list);
  flag = 1;
 }
 dev_unlock();
 if (flag)
  devfs_free(dev);
}
