
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;


 scalar_t__ VLNK ;

__attribute__((used)) static inline bool
vnode_islnk(struct vnode *vp)
{
 return (vp->v_type == VLNK);
}
