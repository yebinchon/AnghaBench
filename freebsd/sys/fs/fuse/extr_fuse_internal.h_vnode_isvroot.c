
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_vflag; } ;


 int VV_ROOT ;

__attribute__((used)) static inline bool
vnode_isvroot(struct vnode *vp)
{
 return ((vp->v_vflag & VV_ROOT) != 0);
}
