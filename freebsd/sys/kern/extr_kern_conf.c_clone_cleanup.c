
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct clonedevs {int head; } ;
struct cdev_priv {int cdp_flags; } ;
struct cdev {int si_flags; int si_name; } ;


 int CDP_SCHED_DTR ;
 int KASSERT (int,char*) ;
 int LIST_EMPTY (int *) ;
 struct cdev* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct cdev*,int ) ;
 int M_DEVBUF ;
 int SI_CLONELIST ;
 int SI_NAMED ;
 struct cdev_priv* cdev2priv (struct cdev*) ;
 int destroy_devl (struct cdev*) ;
 scalar_t__ dev2udev (struct cdev*) ;
 int dev2unit (struct cdev*) ;
 int dev_lock () ;
 int dev_unlock_and_free () ;
 int free (struct clonedevs*,int ) ;
 int si_clone ;

void
clone_cleanup(struct clonedevs **cdp)
{
 struct cdev *dev;
 struct cdev_priv *cp;
 struct clonedevs *cd;

 cd = *cdp;
 if (cd == ((void*)0))
  return;
 dev_lock();
 while (!LIST_EMPTY(&cd->head)) {
  dev = LIST_FIRST(&cd->head);
  LIST_REMOVE(dev, si_clone);
  KASSERT(dev->si_flags & SI_CLONELIST,
      ("Dev %p(%s) should be on clonelist", dev, dev->si_name));
  dev->si_flags &= ~SI_CLONELIST;
  cp = cdev2priv(dev);
  if (!(cp->cdp_flags & CDP_SCHED_DTR)) {
   cp->cdp_flags |= CDP_SCHED_DTR;
   KASSERT(dev->si_flags & SI_NAMED,
    ("Driver has goofed in cloning underways udev %jx unit %x",
    (uintmax_t)dev2udev(dev), dev2unit(dev)));
   destroy_devl(dev);
  }
 }
 dev_unlock_and_free();
 free(cd, M_DEVBUF);
 *cdp = ((void*)0);
}
