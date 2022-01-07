
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int LK_EXCLUSIVE ;
 int LK_RELEASE ;
 int LK_RETRY ;
 int VOP_UNLOCK (struct vnode*,int) ;
 scalar_t__ vn_lock (struct vnode*,int) ;

__attribute__((used)) static void
unionfs_revlock(struct vnode *vp, int flags)
{
 if (flags & LK_RELEASE)
  VOP_UNLOCK(vp, flags);
 else {

  if (vn_lock(vp, flags) != 0)
   vn_lock(vp, LK_EXCLUSIVE | LK_RETRY);
 }
}
