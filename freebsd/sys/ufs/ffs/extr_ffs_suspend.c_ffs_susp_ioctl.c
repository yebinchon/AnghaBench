
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct thread {int td_ucred; } ;
struct mount {int dummy; } ;
struct cdev {int dummy; } ;
typedef int fsid_t ;
typedef scalar_t__ caddr_t ;


 int ENOENT ;
 int ENXIO ;
 int EPERM ;


 int devfs_clear_cdevpriv () ;
 int devfs_get_cdevpriv (void**) ;
 int devfs_set_cdevpriv (struct mount*,int ) ;
 int ffs_susp_dtor ;
 int ffs_susp_lock ;
 int ffs_susp_suspend (struct mount*) ;
 int ffs_susp_unsuspend (struct mount*) ;
 scalar_t__ jailed (int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int vfs_busy (struct mount*,int ) ;
 struct mount* vfs_getvfs (int *) ;
 int vfs_rel (struct mount*) ;
 int vfs_unbusy (struct mount*) ;

__attribute__((used)) static int
ffs_susp_ioctl(struct cdev *dev, u_long cmd, caddr_t addr, int flags,
    struct thread *td)
{
 struct mount *mp;
 fsid_t *fsidp;
 int error;






 if (jailed(td->td_ucred))
  return (EPERM);

 sx_xlock(&ffs_susp_lock);

 switch (cmd) {
 case 128:
  fsidp = (fsid_t *)addr;
  mp = vfs_getvfs(fsidp);
  if (mp == ((void*)0)) {
   error = ENOENT;
   break;
  }
  error = vfs_busy(mp, 0);
  vfs_rel(mp);
  if (error != 0)
   break;
  error = ffs_susp_suspend(mp);
  if (error != 0) {
   vfs_unbusy(mp);
   break;
  }
  error = devfs_set_cdevpriv(mp, ffs_susp_dtor);
  if (error != 0)
   ffs_susp_unsuspend(mp);
  break;
 case 129:
  error = devfs_get_cdevpriv((void **)&mp);
  if (error != 0)
   break;






  sx_xunlock(&ffs_susp_lock);
  devfs_clear_cdevpriv();
  return (0);
 default:
  error = ENXIO;
  break;
 }

 sx_xunlock(&ffs_susp_lock);

 return (error);
}
