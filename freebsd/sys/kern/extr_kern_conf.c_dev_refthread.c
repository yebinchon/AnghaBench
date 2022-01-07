
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdevsw {int dummy; } ;
struct cdev_priv {int cdp_flags; } ;
struct cdev {int si_flags; int si_threadcount; struct cdevsw* si_devsw; } ;


 int CDP_SCHED_DTR ;
 int MA_NOTOWNED ;
 int SI_ETERNAL ;
 int atomic_add_long (int *,int) ;
 struct cdev_priv* cdev2priv (struct cdev*) ;
 int dev_lock () ;
 int dev_unlock () ;
 int devmtx ;
 int mtx_assert (int *,int ) ;

struct cdevsw *
dev_refthread(struct cdev *dev, int *ref)
{
 struct cdevsw *csw;
 struct cdev_priv *cdp;

 mtx_assert(&devmtx, MA_NOTOWNED);
 if ((dev->si_flags & SI_ETERNAL) != 0) {
  *ref = 0;
  return (dev->si_devsw);
 }
 dev_lock();
 csw = dev->si_devsw;
 if (csw != ((void*)0)) {
  cdp = cdev2priv(dev);
  if ((cdp->cdp_flags & CDP_SCHED_DTR) == 0)
   atomic_add_long(&dev->si_threadcount, 1);
  else
   csw = ((void*)0);
 }
 dev_unlock();
 if (csw != ((void*)0))
  *ref = 1;
 return (csw);
}
