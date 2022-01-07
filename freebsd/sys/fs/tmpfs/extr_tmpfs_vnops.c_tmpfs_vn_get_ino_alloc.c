
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;


 int tmpfs_alloc_vp (struct mount*,void*,int,struct vnode**) ;

__attribute__((used)) static int
tmpfs_vn_get_ino_alloc(struct mount *mp, void *arg, int lkflags,
    struct vnode **rvp)
{

 return (tmpfs_alloc_vp(mp, arg, lkflags, rvp));
}
