
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int v_vflag; } ;
struct mount {int dummy; } ;
struct TYPE_2__ {int tm_root; } ;


 TYPE_1__* VFS_TO_TMPFS (struct mount*) ;
 int VV_ROOT ;
 int tmpfs_alloc_vp (struct mount*,int ,int,struct vnode**) ;

__attribute__((used)) static int
tmpfs_root(struct mount *mp, int flags, struct vnode **vpp)
{
 int error;

 error = tmpfs_alloc_vp(mp, VFS_TO_TMPFS(mp)->tm_root, flags, vpp);
 if (error == 0)
  (*vpp)->v_vflag |= VV_ROOT;
 return (error);
}
