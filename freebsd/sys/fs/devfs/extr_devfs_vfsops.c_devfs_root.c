
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_vflag; } ;
struct mount {int dummy; } ;
struct devfs_mount {int dm_rootdir; int dm_lock; } ;


 int LK_EXCLUSIVE ;
 struct devfs_mount* VFSTODEVFS (struct mount*) ;
 int VV_ROOT ;
 int devfs_allocv (int ,struct mount*,int ,struct vnode**) ;
 int sx_xlock (int *) ;

__attribute__((used)) static int
devfs_root(struct mount *mp, int flags, struct vnode **vpp)
{
 int error;
 struct vnode *vp;
 struct devfs_mount *dmp;

 dmp = VFSTODEVFS(mp);
 sx_xlock(&dmp->dm_lock);
 error = devfs_allocv(dmp->dm_rootdir, mp, LK_EXCLUSIVE, &vp);
 if (error)
  return (error);
 vp->v_vflag |= VV_ROOT;
 *vpp = vp;
 return (0);
}
