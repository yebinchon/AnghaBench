
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_type; } ;
typedef enum vtype { ____Placeholder_vtype } vtype ;



__attribute__((used)) static inline enum vtype
vnode_vtype(struct vnode *vp)
{
 return (vp->v_type);
}
