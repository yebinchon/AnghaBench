
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vop_setattr_args {struct ucred* a_cred; struct vattr* a_vap; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct TYPE_6__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_5__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_4__ {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct vattr {scalar_t__ va_type; scalar_t__ va_nlink; scalar_t__ va_fsid; scalar_t__ va_fileid; scalar_t__ va_blocksize; scalar_t__ va_gen; scalar_t__ va_rdev; scalar_t__ va_bytes; scalar_t__ va_flags; scalar_t__ va_size; scalar_t__ va_uid; scalar_t__ va_gid; scalar_t__ va_mode; TYPE_3__ va_birthtime; TYPE_2__ va_mtime; TYPE_1__ va_atime; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
typedef scalar_t__ mode_t ;


 int EINVAL ;
 int MPASS (int ) ;
 scalar_t__ VNON ;
 scalar_t__ VNOVAL ;
 int VOP_ISLOCKED (struct vnode*) ;
 struct thread* curthread ;
 int tmpfs_chflags (struct vnode*,scalar_t__,struct ucred*,struct thread*) ;
 int tmpfs_chmod (struct vnode*,scalar_t__,struct ucred*,struct thread*) ;
 int tmpfs_chown (struct vnode*,scalar_t__,scalar_t__,struct ucred*,struct thread*) ;
 int tmpfs_chsize (struct vnode*,scalar_t__,struct ucred*,struct thread*) ;
 int tmpfs_chtimes (struct vnode*,struct vattr*,struct ucred*,struct thread*) ;
 int tmpfs_update (struct vnode*) ;

int
tmpfs_setattr(struct vop_setattr_args *v)
{
 struct vnode *vp = v->a_vp;
 struct vattr *vap = v->a_vap;
 struct ucred *cred = v->a_cred;
 struct thread *td = curthread;

 int error;

 MPASS(VOP_ISLOCKED(vp));

 error = 0;


 if (vap->va_type != VNON ||
     vap->va_nlink != VNOVAL ||
     vap->va_fsid != VNOVAL ||
     vap->va_fileid != VNOVAL ||
     vap->va_blocksize != VNOVAL ||
     vap->va_gen != VNOVAL ||
     vap->va_rdev != VNOVAL ||
     vap->va_bytes != VNOVAL)
  error = EINVAL;

 if (error == 0 && (vap->va_flags != VNOVAL))
  error = tmpfs_chflags(vp, vap->va_flags, cred, td);

 if (error == 0 && (vap->va_size != VNOVAL))
  error = tmpfs_chsize(vp, vap->va_size, cred, td);

 if (error == 0 && (vap->va_uid != VNOVAL || vap->va_gid != VNOVAL))
  error = tmpfs_chown(vp, vap->va_uid, vap->va_gid, cred, td);

 if (error == 0 && (vap->va_mode != (mode_t)VNOVAL))
  error = tmpfs_chmod(vp, vap->va_mode, cred, td);

 if (error == 0 && ((vap->va_atime.tv_sec != VNOVAL &&
     vap->va_atime.tv_nsec != VNOVAL) ||
     (vap->va_mtime.tv_sec != VNOVAL &&
     vap->va_mtime.tv_nsec != VNOVAL) ||
     (vap->va_birthtime.tv_sec != VNOVAL &&
     vap->va_birthtime.tv_nsec != VNOVAL)))
  error = tmpfs_chtimes(vp, vap, cred, td);




 tmpfs_update(vp);

 MPASS(VOP_ISLOCKED(vp));

 return error;
}
