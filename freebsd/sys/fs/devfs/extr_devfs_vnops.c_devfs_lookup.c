
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_lookup_args {TYPE_1__* a_dvp; } ;
struct devfs_mount {int dm_lock; } ;
struct TYPE_2__ {int v_mount; } ;


 int ENOTDIR ;
 struct devfs_mount* VFSTODEVFS (int ) ;
 int devfs_lookupx (struct vop_lookup_args*,int*) ;
 scalar_t__ devfs_populate_vp (TYPE_1__*) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
devfs_lookup(struct vop_lookup_args *ap)
{
 int j;
 struct devfs_mount *dmp;
 int dm_unlock;

 if (devfs_populate_vp(ap->a_dvp) != 0)
  return (ENOTDIR);

 dmp = VFSTODEVFS(ap->a_dvp->v_mount);
 dm_unlock = 1;
 j = devfs_lookupx(ap, &dm_unlock);
 if (dm_unlock == 1)
  sx_xunlock(&dmp->dm_lock);
 return (j);
}
