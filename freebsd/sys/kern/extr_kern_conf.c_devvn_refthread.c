
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_vflag; struct cdev* v_rdev; } ;
struct cdevsw {int dummy; } ;
struct cdev_priv {int cdp_flags; } ;
struct cdev {int si_flags; int si_threadcount; struct cdevsw* si_devsw; } ;


 int CDP_SCHED_DTR ;
 int KASSERT (int,char*) ;
 int MA_NOTOWNED ;
 int SI_ETERNAL ;
 int VV_ETERNALDEV ;
 int atomic_add_long (int *,int) ;
 struct cdev_priv* cdev2priv (struct cdev*) ;
 int dev_lock () ;
 int dev_unlock () ;
 int devmtx ;
 int mtx_assert (int *,int ) ;

struct cdevsw *
devvn_refthread(struct vnode *vp, struct cdev **devp, int *ref)
{
 struct cdevsw *csw;
 struct cdev_priv *cdp;
 struct cdev *dev;

 mtx_assert(&devmtx, MA_NOTOWNED);
 if ((vp->v_vflag & VV_ETERNALDEV) != 0) {
  dev = vp->v_rdev;
  if (dev == ((void*)0))
   return (((void*)0));
  KASSERT((dev->si_flags & SI_ETERNAL) != 0,
      ("Not eternal cdev"));
  *ref = 0;
  csw = dev->si_devsw;
  KASSERT(csw != ((void*)0), ("Eternal cdev is destroyed"));
  *devp = dev;
  return (csw);
 }

 csw = ((void*)0);
 dev_lock();
 dev = vp->v_rdev;
 if (dev == ((void*)0)) {
  dev_unlock();
  return (((void*)0));
 }
 cdp = cdev2priv(dev);
 if ((cdp->cdp_flags & CDP_SCHED_DTR) == 0) {
  csw = dev->si_devsw;
  if (csw != ((void*)0))
   atomic_add_long(&dev->si_threadcount, 1);
 }
 dev_unlock();
 if (csw != ((void*)0)) {
  *devp = dev;
  *ref = 1;
 }
 return (csw);
}
