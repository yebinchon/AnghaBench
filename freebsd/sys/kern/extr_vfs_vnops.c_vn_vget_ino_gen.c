
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* vn_get_ino_t ) (struct mount*,void*,int,struct vnode**) ;
struct vnode {int v_iflag; struct mount* v_mount; } ;
struct mount {int dummy; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 int ENOENT ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LK_SHARED ;
 int MBF_NOWAIT ;
 int VI_DOOMED ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int vfs_busy (struct mount*,int ) ;
 int vfs_ref (struct mount*) ;
 int vfs_rel (struct mount*) ;
 int vfs_unbusy (struct mount*) ;
 int vn_lock (struct vnode*,int) ;
 int vput (struct vnode*) ;
 int vunref (struct vnode*) ;

int
vn_vget_ino_gen(struct vnode *vp, vn_get_ino_t alloc, void *alloc_arg,
    int lkflags, struct vnode **rvp)
{
 struct mount *mp;
 int ltype, error;

 ASSERT_VOP_LOCKED(vp, "vn_vget_ino_get");
 mp = vp->v_mount;
 ltype = VOP_ISLOCKED(vp);
 KASSERT(ltype == LK_EXCLUSIVE || ltype == LK_SHARED,
     ("vn_vget_ino: vp not locked"));
 error = vfs_busy(mp, MBF_NOWAIT);
 if (error != 0) {
  vfs_ref(mp);
  VOP_UNLOCK(vp, 0);
  error = vfs_busy(mp, 0);
  vn_lock(vp, ltype | LK_RETRY);
  vfs_rel(mp);
  if (error != 0)
   return (ENOENT);
  if (vp->v_iflag & VI_DOOMED) {
   vfs_unbusy(mp);
   return (ENOENT);
  }
 }
 VOP_UNLOCK(vp, 0);
 error = alloc(mp, alloc_arg, lkflags, rvp);
 vfs_unbusy(mp);
 if (error != 0 || *rvp != vp)
  vn_lock(vp, ltype | LK_RETRY);
 if (vp->v_iflag & VI_DOOMED) {
  if (error == 0) {
   if (*rvp == vp)
    vunref(vp);
   else
    vput(*rvp);
  }
  error = ENOENT;
 }
 return (error);
}
