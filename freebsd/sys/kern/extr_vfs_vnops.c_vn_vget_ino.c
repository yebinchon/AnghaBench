
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
typedef int ino_t ;


 int vn_get_ino_alloc_vget ;
 int vn_vget_ino_gen (struct vnode*,int ,int *,int,struct vnode**) ;

int
vn_vget_ino(struct vnode *vp, ino_t ino, int lkflags, struct vnode **rvp)
{

 return (vn_vget_ino_gen(vp, vn_get_ino_alloc_vget, &ino,
     lkflags, rvp));
}
