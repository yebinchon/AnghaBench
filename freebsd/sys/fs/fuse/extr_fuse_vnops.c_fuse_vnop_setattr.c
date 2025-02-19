
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct vop_setattr_args {struct ucred* a_cred; struct vattr* a_vap; struct vnode* a_vp; } ;
struct vnode {int v_type; } ;
struct TYPE_4__ {scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_sec; } ;
struct vattr {scalar_t__ va_uid; scalar_t__ va_gid; scalar_t__ va_size; int va_vaflags; int va_mode; TYPE_2__ va_mtime; TYPE_1__ va_atime; } ;
struct ucred {scalar_t__ cr_ngroups; scalar_t__* cr_groups; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct fuse_data {int dataflags; } ;
typedef int mode_t ;
typedef scalar_t__ gid_t ;
typedef int accmode_t ;


 int EFTYPE ;
 int EISDIR ;
 int ENXIO ;
 int EROFS ;
 int FSESS_DEFAULT_PERMISSIONS ;
 int PRIV_VFS_CHOWN ;
 int PRIV_VFS_SETGID ;
 int PRIV_VFS_STICKYFILE ;
 int S_ISGID ;
 int S_ISTXT ;
 int S_ISUID ;
 int VADMIN ;
 int VA_UTIMES_NULL ;


 scalar_t__ VNOVAL ;

 int VWRITE ;
 struct thread* curthread ;
 struct fuse_data* fuse_get_mpdata (struct mount*) ;
 int fuse_internal_access (struct vnode*,int ,struct thread*,struct ucred*) ;
 int fuse_internal_getattr (struct vnode*,struct vattr*,struct ucred*,struct thread*) ;
 int fuse_internal_setattr (struct vnode*,struct vattr*,struct thread*,struct ucred*) ;
 scalar_t__ fuse_isdeadfs (struct vnode*) ;
 int groupmember (scalar_t__,struct ucred*) ;
 int priv_check_cred (struct ucred*,int ) ;
 scalar_t__ vfs_isrdonly (struct mount*) ;
 struct mount* vnode_mount (struct vnode*) ;

__attribute__((used)) static int
fuse_vnop_setattr(struct vop_setattr_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct vattr *vap = ap->a_vap;
 struct ucred *cred = ap->a_cred;
 struct thread *td = curthread;
 struct mount *mp;
 struct fuse_data *data;
 struct vattr old_va;
 int dataflags;
 int err = 0, err2;
 accmode_t accmode = 0;
 bool checkperm;
 bool drop_suid = 0;
 gid_t cr_gid;

 mp = vnode_mount(vp);
 data = fuse_get_mpdata(mp);
 dataflags = data->dataflags;
 checkperm = dataflags & FSESS_DEFAULT_PERMISSIONS;
 if (cred->cr_ngroups > 0)
  cr_gid = cred->cr_groups[0];
 else
  cr_gid = 0;

 if (fuse_isdeadfs(vp)) {
  return ENXIO;
 }

 if (vap->va_uid != (uid_t)VNOVAL) {
  if (checkperm) {

   err = priv_check_cred(cred, PRIV_VFS_CHOWN);
   if (err) {

    err2 = fuse_internal_getattr(vp, &old_va, cred,
     td);
    if (err2)
     return (err2);
    if (vap->va_uid != old_va.va_uid)
     return err;
    else
     accmode |= VADMIN;
    drop_suid = 1;
   } else
    accmode |= VADMIN;
  } else
   accmode |= VADMIN;
 }
 if (vap->va_gid != (gid_t)VNOVAL) {
  if (checkperm && priv_check_cred(cred, PRIV_VFS_CHOWN))
   drop_suid = 1;
  if (checkperm && !groupmember(vap->va_gid, cred))
  {




   err = priv_check_cred(cred, PRIV_VFS_CHOWN);
   if (err) {

    err2 = fuse_internal_getattr(vp, &old_va, cred,
     td);
    if (err2)
     return (err2);
    if (vap->va_gid != old_va.va_gid)
     return err;
    accmode |= VADMIN;
   } else
    accmode |= VADMIN;
  } else
   accmode |= VADMIN;
 }
 if (vap->va_size != VNOVAL) {
  switch (vp->v_type) {
  case 130:
   return (EISDIR);
  case 129:
  case 128:
   if (vfs_isrdonly(mp))
    return (EROFS);
   break;
  default:
   return (0);
  }

 }
 if (vap->va_atime.tv_sec != VNOVAL || vap->va_mtime.tv_sec != VNOVAL) {
  if (vap->va_vaflags & VA_UTIMES_NULL)
   accmode |= VWRITE;
  else
   accmode |= VADMIN;
 }
 if (drop_suid) {
  if (vap->va_mode != (mode_t)VNOVAL)
   vap->va_mode &= ~(S_ISUID | S_ISGID);
  else {
   err = fuse_internal_getattr(vp, &old_va, cred, td);
   if (err)
    return (err);
   vap->va_mode = old_va.va_mode & ~(S_ISUID | S_ISGID);
  }
 }
 if (vap->va_mode != (mode_t)VNOVAL) {

  if (checkperm && vp->v_type != 130 && (vap->va_mode & S_ISTXT)
      && priv_check_cred(cred, PRIV_VFS_STICKYFILE))
   return EFTYPE;
  if (checkperm && (vap->va_mode & S_ISGID)) {
   err = fuse_internal_getattr(vp, &old_va, cred, td);
   if (err)
    return (err);
   if (!groupmember(old_va.va_gid, cred)) {
    err = priv_check_cred(cred, PRIV_VFS_SETGID);
    if (err)
     return (err);
   }
  }
  accmode |= VADMIN;
 }

 if (vfs_isrdonly(mp))
  return EROFS;

 err = fuse_internal_access(vp, accmode, td, cred);
 if (err)
  return err;
 else
  return fuse_internal_setattr(vp, vap, td, cred);
}
