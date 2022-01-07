
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;
typedef int ino_t ;


 int VFS_VGET (struct mount*,int ,int,struct vnode**) ;

__attribute__((used)) static int
vn_get_ino_alloc_vget(struct mount *mp, void *arg, int lkflags,
    struct vnode **rvp)
{

 return (VFS_VGET(mp, *(ino_t *)arg, lkflags, rvp));
}
