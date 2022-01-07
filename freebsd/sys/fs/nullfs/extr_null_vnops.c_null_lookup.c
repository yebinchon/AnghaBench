
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_lookup_args {struct vnode** a_vpp; struct vnode* a_dvp; struct componentname* a_cnp; } ;
struct vnode {int v_vflag; int v_iflag; struct mount* v_mount; } ;
struct mount {int mnt_flag; } ;
struct componentname {int cn_flags; scalar_t__ cn_nameiop; } ;


 scalar_t__ CREATE ;
 scalar_t__ DELETE ;
 int EJUSTRETURN ;
 int ENOENT ;
 int EROFS ;
 int ISDOTDOT ;
 int ISLASTCN ;
 int KASSERT (int,char*) ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int MNT_RDONLY ;
 struct vnode* NULLVPTOLOWERVP (struct vnode*) ;
 scalar_t__ RENAME ;
 int VI_DOOMED ;
 int VOP_LOOKUP (struct vnode*,struct vnode**,struct componentname*) ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int VREF (struct vnode*) ;
 int VV_ROOT ;
 int null_nodeget (struct mount*,struct vnode*,struct vnode**) ;
 int vdrop (struct vnode*) ;
 int vhold (struct vnode*) ;
 int vn_lock (struct vnode*,int) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
null_lookup(struct vop_lookup_args *ap)
{
 struct componentname *cnp = ap->a_cnp;
 struct vnode *dvp = ap->a_dvp;
 int flags = cnp->cn_flags;
 struct vnode *vp, *ldvp, *lvp;
 struct mount *mp;
 int error;

 mp = dvp->v_mount;
 if ((flags & ISLASTCN) != 0 && (mp->mnt_flag & MNT_RDONLY) != 0 &&
     (cnp->cn_nameiop == DELETE || cnp->cn_nameiop == RENAME))
  return (EROFS);




 ldvp = NULLVPTOLOWERVP(dvp);
 vp = lvp = ((void*)0);
 KASSERT((ldvp->v_vflag & VV_ROOT) == 0 ||
     ((dvp->v_vflag & VV_ROOT) != 0 && (flags & ISDOTDOT) == 0),
     ("ldvp %p fl %#x dvp %p fl %#x flags %#x", ldvp, ldvp->v_vflag,
      dvp, dvp->v_vflag, flags));






 vhold(ldvp);

 error = VOP_LOOKUP(ldvp, &lvp, cnp);






 if ((error == 0 || error == EJUSTRETURN) &&
     (dvp->v_iflag & VI_DOOMED) != 0) {
  error = ENOENT;
  if (lvp != ((void*)0))
   vput(lvp);
  VOP_UNLOCK(ldvp, 0);
  vn_lock(dvp, LK_EXCLUSIVE | LK_RETRY);
 }
 vdrop(ldvp);

 if (error == EJUSTRETURN && (flags & ISLASTCN) != 0 &&
     (mp->mnt_flag & MNT_RDONLY) != 0 &&
     (cnp->cn_nameiop == CREATE || cnp->cn_nameiop == RENAME))
  error = EROFS;

 if ((error == 0 || error == EJUSTRETURN) && lvp != ((void*)0)) {
  if (ldvp == lvp) {
   *ap->a_vpp = dvp;
   VREF(dvp);
   vrele(lvp);
  } else {
   error = null_nodeget(mp, lvp, &vp);
   if (error == 0)
    *ap->a_vpp = vp;
  }
 }
 return (error);
}
