
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int VOP_UNLOCK (struct vnode*,int ) ;

__attribute__((used)) static void
vfs_knlunlock(void *arg)
{
 struct vnode *vp = arg;

 VOP_UNLOCK(vp, 0);
}
