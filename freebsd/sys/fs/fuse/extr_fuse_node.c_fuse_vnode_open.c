
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int dummy; } ;
typedef int int32_t ;


 scalar_t__ VREG ;
 int vnode_create_vobject (struct vnode*,int ,struct thread*) ;
 scalar_t__ vnode_vtype (struct vnode*) ;

void
fuse_vnode_open(struct vnode *vp, int32_t fuse_open_flags, struct thread *td)
{
 if (vnode_vtype(vp) == VREG)
  vnode_create_vobject(vp, 0, td);
}
