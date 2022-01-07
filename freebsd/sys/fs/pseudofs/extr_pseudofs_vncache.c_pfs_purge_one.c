
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int LK_EXCLUSIVE ;
 int VOP_LOCK (struct vnode*,int ) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int vdrop (struct vnode*) ;
 int vgone (struct vnode*) ;

__attribute__((used)) static void
pfs_purge_one(struct vnode *vnp)
{

 VOP_LOCK(vnp, LK_EXCLUSIVE);
 vgone(vnp);
 VOP_UNLOCK(vnp, 0);
 vdrop(vnp);
}
