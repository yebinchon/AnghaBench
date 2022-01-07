
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct pfs_info {int pi_root; } ;
struct mount {scalar_t__ mnt_data; } ;


 int NO_PID ;
 int pfs_vncache_alloc (struct mount*,struct vnode**,int ,int ) ;

int
pfs_root(struct mount *mp, int flags, struct vnode **vpp)
{
 struct pfs_info *pi;

 pi = (struct pfs_info *)mp->mnt_data;
 return (pfs_vncache_alloc(mp, vpp, pi->pi_root, NO_PID));
}
