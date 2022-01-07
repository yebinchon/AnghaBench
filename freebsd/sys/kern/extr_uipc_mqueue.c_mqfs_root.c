
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mqfs_info {int mi_root; } ;
struct mount {int dummy; } ;


 struct mqfs_info* VFSTOMQFS (struct mount*) ;
 int mqfs_allocv (struct mount*,struct vnode**,int ) ;

__attribute__((used)) static int
mqfs_root(struct mount *mp, int flags, struct vnode **vpp)
{
 struct mqfs_info *mqfs;
 int ret;

 mqfs = VFSTOMQFS(mp);
 ret = mqfs_allocv(mp, vpp, mqfs->mi_root);
 return (ret);
}
