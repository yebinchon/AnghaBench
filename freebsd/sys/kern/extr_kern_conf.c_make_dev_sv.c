
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct make_dev_args {int mda_size; int mda_flags; int mda_mode; int mda_gid; int mda_uid; int * mda_cr; TYPE_1__* mda_devsw; } ;
struct cdev {int si_flags; int si_mode; int si_gid; int si_uid; int si_cred; int si_name; } ;
typedef int args ;
struct TYPE_2__ {int d_name; } ;


 int EINVAL ;
 int ENOMEM ;
 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct cdev*,int ) ;
 int MAKEDEV_CHECKNAME ;
 int MAKEDEV_ETERNAL ;
 int MAKEDEV_NOWAIT ;
 int MAKEDEV_REF ;
 int MAKEDEV_WAITOK ;
 int SI_ETERNAL ;
 int SI_NAMED ;
 int bcopy (struct make_dev_args*,struct make_dev_args*,int) ;
 int bzero (struct make_dev_args*,int) ;
 int clean_unrhdrl (int ) ;
 int crhold (int *) ;
 int dev2unit (struct cdev*) ;
 int dev_lock () ;
 int dev_refl (struct cdev*) ;
 int dev_unlock () ;
 int dev_unlock_and_free () ;
 struct cdev* devfs_alloc (int) ;
 int devfs_create (struct cdev*) ;
 int devfs_free (struct cdev*) ;
 int devfs_inos ;
 int devtoname (struct cdev*) ;
 struct cdev* newdev (struct make_dev_args*,struct cdev*) ;
 int notify_create (struct cdev*,int) ;
 int panic (char*,int,int ) ;
 int prep_cdevsw (TYPE_1__*,int) ;
 int prep_devname (struct cdev*,char const*,int ) ;
 int si_list ;

__attribute__((used)) static int
make_dev_sv(struct make_dev_args *args1, struct cdev **dres,
    const char *fmt, va_list ap)
{
 struct cdev *dev, *dev_new;
 struct make_dev_args args;
 int res;

 bzero(&args, sizeof(args));
 if (sizeof(args) < args1->mda_size)
  return (EINVAL);
 bcopy(args1, &args, args1->mda_size);
 KASSERT((args.mda_flags & MAKEDEV_WAITOK) == 0 ||
     (args.mda_flags & MAKEDEV_NOWAIT) == 0,
     ("make_dev_sv: both WAITOK and NOWAIT specified"));
 dev_new = devfs_alloc(args.mda_flags);
 if (dev_new == ((void*)0))
  return (ENOMEM);
 dev_lock();
 res = prep_cdevsw(args.mda_devsw, args.mda_flags);
 if (res != 0) {
  dev_unlock();
  devfs_free(dev_new);
  return (res);
 }
 dev = newdev(&args, dev_new);
 if ((dev->si_flags & SI_NAMED) == 0) {
  res = prep_devname(dev, fmt, ap);
  if (res != 0) {
   if ((args.mda_flags & MAKEDEV_CHECKNAME) == 0) {
    panic(
   "make_dev_sv: bad si_name (error=%d, si_name=%s)",
        res, dev->si_name);
   }
   if (dev == dev_new) {
    LIST_REMOVE(dev, si_list);
    dev_unlock();
    devfs_free(dev);
   } else
    dev_unlock();
   return (res);
  }
 }
 if ((args.mda_flags & MAKEDEV_REF) != 0)
  dev_refl(dev);
 if ((args.mda_flags & MAKEDEV_ETERNAL) != 0)
  dev->si_flags |= SI_ETERNAL;
 KASSERT(!(dev->si_flags & SI_NAMED),
     ("make_dev() by driver %s on pre-existing device (min=%x, name=%s)",
     args.mda_devsw->d_name, dev2unit(dev), devtoname(dev)));
 dev->si_flags |= SI_NAMED;
 if (args.mda_cr != ((void*)0))
  dev->si_cred = crhold(args.mda_cr);
 dev->si_uid = args.mda_uid;
 dev->si_gid = args.mda_gid;
 dev->si_mode = args.mda_mode;

 devfs_create(dev);
 clean_unrhdrl(devfs_inos);
 dev_unlock_and_free();

 notify_create(dev, args.mda_flags);

 *dres = dev;
 return (0);
}
