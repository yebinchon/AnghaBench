
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct cdev {struct timespec si_ctime; struct timespec si_mtime; struct timespec si_atime; int si_children; } ;
struct cdev_priv {struct cdev cdp_c; int cdp_dirent0; int * cdp_dirents; } ;


 int LIST_INIT (int *) ;
 int MAKEDEV_NOWAIT ;
 int M_CDEVP ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 struct cdev_priv* malloc (int,int ,int) ;
 int vfs_timestamp (struct timespec*) ;

struct cdev *
devfs_alloc(int flags)
{
 struct cdev_priv *cdp;
 struct cdev *cdev;
 struct timespec ts;

 cdp = malloc(sizeof *cdp, M_CDEVP, M_ZERO |
     ((flags & MAKEDEV_NOWAIT) ? M_NOWAIT : M_WAITOK));
 if (cdp == ((void*)0))
  return (((void*)0));

 cdp->cdp_dirents = &cdp->cdp_dirent0;

 cdev = &cdp->cdp_c;
 LIST_INIT(&cdev->si_children);
 vfs_timestamp(&ts);
 cdev->si_atime = cdev->si_mtime = cdev->si_ctime = ts;

 return (cdev);
}
