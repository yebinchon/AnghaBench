
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct cdev {int si_flags; int si_name; } ;


 int ENOMEM ;
 int KASSERT (int,char*) ;
 int MAKEDEV_CHECKNAME ;
 int MAKEDEV_NOWAIT ;
 int MAKEDEV_WAITOK ;
 int SI_ALIAS ;
 int SI_NAMED ;
 int clean_unrhdrl (int ) ;
 int dev_dependsl (struct cdev*,struct cdev*) ;
 int dev_lock () ;
 int dev_unlock () ;
 struct cdev* devfs_alloc (int) ;
 int devfs_create (struct cdev*) ;
 int devfs_free (struct cdev*) ;
 int devfs_inos ;
 int notify_create (struct cdev*,int) ;
 int panic (char*,int,int ) ;
 int prep_devname (struct cdev*,char const*,int ) ;

__attribute__((used)) static int
make_dev_alias_v(int flags, struct cdev **cdev, struct cdev *pdev,
    const char *fmt, va_list ap)
{
 struct cdev *dev;
 int error;

 KASSERT(pdev != ((void*)0), ("make_dev_alias_v: pdev is NULL"));
 KASSERT((flags & MAKEDEV_WAITOK) == 0 || (flags & MAKEDEV_NOWAIT) == 0,
     ("make_dev_alias_v: both WAITOK and NOWAIT specified"));
 KASSERT((flags & ~(MAKEDEV_WAITOK | MAKEDEV_NOWAIT |
     MAKEDEV_CHECKNAME)) == 0,
     ("make_dev_alias_v: invalid flags specified (flags=%02x)", flags));

 dev = devfs_alloc(flags);
 if (dev == ((void*)0))
  return (ENOMEM);
 dev_lock();
 dev->si_flags |= SI_ALIAS;
 error = prep_devname(dev, fmt, ap);
 if (error != 0) {
  if ((flags & MAKEDEV_CHECKNAME) == 0) {
   panic("make_dev_alias_v: bad si_name "
       "(error=%d, si_name=%s)", error, dev->si_name);
  }
  dev_unlock();
  devfs_free(dev);
  return (error);
 }
 dev->si_flags |= SI_NAMED;
 devfs_create(dev);
 dev_dependsl(pdev, dev);
 clean_unrhdrl(devfs_inos);
 dev_unlock();

 notify_create(dev, flags);
 *cdev = dev;

 return (0);
}
