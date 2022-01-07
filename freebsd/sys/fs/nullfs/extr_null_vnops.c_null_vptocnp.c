
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_vptocnp_args {int a_buflen; int a_buf; struct ucred* a_cred; struct vnode** a_vpp; struct vnode* a_vp; } ;
struct vnode {struct mount* v_mount; } ;
struct ucred {int dummy; } ;
struct mount {int dummy; } ;


 int ENOENT ;
 int LK_RETRY ;
 int LK_SHARED ;
 struct vnode* NULLVPTOLOWERVP (struct vnode*) ;
 int VOP_ISLOCKED (struct vnode*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int null_nodeget (struct mount*,struct vnode*,struct vnode**) ;
 int vdrop (struct vnode*) ;
 int vfs_ref (struct mount*) ;
 int vfs_rel (struct mount*) ;
 int vhold (struct vnode*) ;
 int vn_lock (struct vnode*,int) ;
 int vn_vptocnp (struct vnode**,struct ucred*,int ,int ) ;
 int vref (struct vnode*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
null_vptocnp(struct vop_vptocnp_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct vnode **dvp = ap->a_vpp;
 struct vnode *lvp, *ldvp;
 struct ucred *cred = ap->a_cred;
 struct mount *mp;
 int error, locked;

 locked = VOP_ISLOCKED(vp);
 lvp = NULLVPTOLOWERVP(vp);
 vhold(lvp);
 mp = vp->v_mount;
 vfs_ref(mp);
 VOP_UNLOCK(vp, 0);
 ldvp = lvp;
 vref(lvp);
 error = vn_vptocnp(&ldvp, cred, ap->a_buf, ap->a_buflen);
 vdrop(lvp);
 if (error != 0) {
  vn_lock(vp, locked | LK_RETRY);
  vfs_rel(mp);
  return (ENOENT);
 }

 error = vn_lock(ldvp, LK_SHARED);
 if (error != 0) {
  vrele(ldvp);
  vn_lock(vp, locked | LK_RETRY);
  vfs_rel(mp);
  return (ENOENT);
 }
 error = null_nodeget(mp, ldvp, dvp);
 if (error == 0) {



  VOP_UNLOCK(*dvp, 0);
 }
 vn_lock(vp, locked | LK_RETRY);
 vfs_rel(mp);
 return (error);
}
