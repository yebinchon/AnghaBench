
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef scalar_t__ u_quad_t ;
struct vop_setattr_args {int a_cred; struct vattr* a_vap; struct vnode* a_vp; } ;
struct vnode {int v_type; TYPE_1__* v_mount; } ;
struct TYPE_7__ {scalar_t__ tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_sec; } ;
struct vattr {scalar_t__ va_flags; scalar_t__ va_uid; scalar_t__ va_gid; scalar_t__ va_mode; scalar_t__ va_size; TYPE_3__ va_atime; TYPE_2__ va_mtime; } ;
struct thread {int dummy; } ;
struct TYPE_8__ {scalar_t__ na_size; } ;
struct nfsnode {scalar_t__ n_size; int n_flag; TYPE_4__ n_vattr; } ;
typedef scalar_t__ mode_t ;
typedef scalar_t__ gid_t ;
struct TYPE_5__ {int mnt_flag; } ;


 int EINTR ;
 int EIO ;
 int EISDIR ;
 int EOPNOTSUPP ;
 int EROFS ;
 int MNT_RDONLY ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int NMODIFIED ;




 scalar_t__ VNOVAL ;
 int VREG ;

 struct nfsnode* VTONFS (struct vnode*) ;
 int V_SAVE ;
 struct thread* curthread ;
 int ncl_meta_setsize (struct vnode*,struct thread*,scalar_t__) ;
 int ncl_vinvalbuf (struct vnode*,int ,struct thread*,int) ;
 int nfs_setattrrpc (struct vnode*,struct vattr*,int ,struct thread*) ;
 int nfscl_delegmodtime (struct vnode*) ;
 int vnode_pager_setsize (struct vnode*,scalar_t__) ;

__attribute__((used)) static int
nfs_setattr(struct vop_setattr_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct nfsnode *np = VTONFS(vp);
 struct thread *td = curthread;
 struct vattr *vap = ap->a_vap;
 int error = 0;
 u_quad_t tsize;


 tsize = (u_quad_t)0;





 if (vap->va_flags != VNOVAL)
  return (EOPNOTSUPP);




   if ((vap->va_flags != VNOVAL || vap->va_uid != (uid_t)VNOVAL ||
     vap->va_gid != (gid_t)VNOVAL || vap->va_atime.tv_sec != VNOVAL ||
     vap->va_mtime.tv_sec != VNOVAL || vap->va_mode != (mode_t)VNOVAL) &&
     (vp->v_mount->mnt_flag & MNT_RDONLY))
  return (EROFS);
 if (vap->va_size != VNOVAL) {
   switch (vp->v_type) {
   case 130:
    return (EISDIR);
   case 131:
   case 132:
   case 128:
   case 129:
   if (vap->va_mtime.tv_sec == VNOVAL &&
       vap->va_atime.tv_sec == VNOVAL &&
       vap->va_mode == (mode_t)VNOVAL &&
       vap->va_uid == (uid_t)VNOVAL &&
       vap->va_gid == (gid_t)VNOVAL)
    return (0);
    vap->va_size = VNOVAL;
    break;
   default:




   if (vp->v_mount->mnt_flag & MNT_RDONLY)
    return (EROFS);






   NFSLOCKNODE(np);
   tsize = np->n_size;
   NFSUNLOCKNODE(np);
   error = ncl_meta_setsize(vp, td, vap->va_size);
   NFSLOCKNODE(np);
    if (np->n_flag & NMODIFIED) {
       tsize = np->n_size;
       NFSUNLOCKNODE(np);
       error = ncl_vinvalbuf(vp, vap->va_size == 0 ?
           0 : V_SAVE, td, 1);
       if (error != 0) {
        vnode_pager_setsize(vp, tsize);
        return (error);
       }




       nfscl_delegmodtime(vp);
    } else
       NFSUNLOCKNODE(np);






   NFSLOCKNODE(np);
    np->n_vattr.na_size = np->n_size = vap->va_size;
   NFSUNLOCKNODE(np);
    }
   } else {
  NFSLOCKNODE(np);
  if ((vap->va_mtime.tv_sec != VNOVAL || vap->va_atime.tv_sec != VNOVAL) &&
      (np->n_flag & NMODIFIED) && vp->v_type == VREG) {
   NFSUNLOCKNODE(np);
   error = ncl_vinvalbuf(vp, V_SAVE, td, 1);
   if (error == EINTR || error == EIO)
    return (error);
  } else
   NFSUNLOCKNODE(np);
 }
 error = nfs_setattrrpc(vp, vap, ap->a_cred, td);
 if (error && vap->va_size != VNOVAL) {
  NFSLOCKNODE(np);
  np->n_size = np->n_vattr.na_size = tsize;
  vnode_pager_setsize(vp, tsize);
  NFSUNLOCKNODE(np);
 }
 return (error);
}
