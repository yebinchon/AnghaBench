
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
struct vnode {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_7__ {scalar_t__ tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_sec; } ;
struct TYPE_8__ {scalar_t__ va_size; scalar_t__ va_uid; scalar_t__ va_gid; scalar_t__ va_mode; TYPE_3__ va_mtime; TYPE_2__ va_atime; } ;
struct nfsvattr {TYPE_4__ na_vattr; } ;
struct nfsexstuff {int dummy; } ;
typedef scalar_t__ mode_t ;
typedef scalar_t__ gid_t ;
struct TYPE_5__ {int mnt_flag; } ;


 int ENOENT ;
 int MNT_EXPORTED ;
 int NFSEXITCODE (int) ;
 int NFSPROC_SETATTR ;
 scalar_t__ VNOVAL ;
 int VOP_SETATTR (struct vnode*,TYPE_4__*,struct ucred*) ;
 scalar_t__ VREG ;
 scalar_t__ nfsrv_devidcnt ;
 int nfsrv_proxyds (struct vnode*,int ,int ,struct ucred*,struct thread*,int ,int *,int *,int *,struct nfsvattr*,int *) ;

int
nfsvno_setattr(struct vnode *vp, struct nfsvattr *nvap, struct ucred *cred,
    struct thread *p, struct nfsexstuff *exp)
{
 u_quad_t savsize = 0;
 int error, savedit;





 savedit = 0;
 error = 0;
 if (vp->v_type == VREG && (vp->v_mount->mnt_flag & MNT_EXPORTED) != 0 &&
     nfsrv_devidcnt != 0 && nvap->na_vattr.va_size != VNOVAL &&
     nvap->na_vattr.va_size > 0) {
  savsize = nvap->na_vattr.va_size;
  nvap->na_vattr.va_size = VNOVAL;
  if (nvap->na_vattr.va_uid != (uid_t)VNOVAL ||
      nvap->na_vattr.va_gid != (gid_t)VNOVAL ||
      nvap->na_vattr.va_mode != (mode_t)VNOVAL ||
      nvap->na_vattr.va_atime.tv_sec != VNOVAL ||
      nvap->na_vattr.va_mtime.tv_sec != VNOVAL)
   savedit = 1;
  else
   savedit = 2;
 }
 if (savedit != 2)
  error = VOP_SETATTR(vp, &nvap->na_vattr, cred);
 if (savedit != 0)
  nvap->na_vattr.va_size = savsize;
 if (error == 0 && (nvap->na_vattr.va_uid != (uid_t)VNOVAL ||
     nvap->na_vattr.va_gid != (gid_t)VNOVAL ||
     nvap->na_vattr.va_size != VNOVAL ||
     nvap->na_vattr.va_mode != (mode_t)VNOVAL ||
     nvap->na_vattr.va_atime.tv_sec != VNOVAL ||
     nvap->na_vattr.va_mtime.tv_sec != VNOVAL)) {

  error = nfsrv_proxyds(vp, 0, 0, cred, p, NFSPROC_SETATTR,
      ((void*)0), ((void*)0), ((void*)0), nvap, ((void*)0));
  if (error == ENOENT)
   error = 0;
 }
 NFSEXITCODE(error);
 return (error);
}
