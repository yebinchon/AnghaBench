
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {struct mount* v_mount; } ;
struct mount {int dummy; } ;



__attribute__((used)) static inline struct mount *
vnode_mount(struct vnode *vp)
{
 return (vp->v_mount);
}
