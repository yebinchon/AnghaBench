
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct vnode {int v_type; TYPE_1__* v_mount; } ;
struct vattr {scalar_t__ va_uid; } ;
struct ucred {scalar_t__ cr_uid; } ;
struct thread {int dummy; } ;
struct nfsexstuff {int dummy; } ;
typedef int accmode_t ;
struct TYPE_2__ {int mnt_flag; } ;


 int EACCES ;
 int EPERM ;
 int EROFS ;
 int ETXTBSY ;
 int LK_SHARED ;
 int MNT_RDONLY ;
 int NFSACCCHK_ALLOWOWNER ;
 int NFSACCCHK_ALLOWROOT ;
 int NFSACCCHK_NOOVERRIDE ;
 int NFSACCESS_DELETE ;
 int NFSEXITCODE (int) ;
 scalar_t__ NFSVNO_EXRDONLY (struct nfsexstuff*) ;
 scalar_t__ NFSVOPLOCK (struct vnode*,int ) ;
 int NFSVOPUNLOCK (struct vnode*,int ) ;
 int VDELETE ;
 int VDELETE_CHILD ;

 int VEXPLICIT_DENY ;

 int VOP_ACCESSX (struct vnode*,int,struct ucred*,struct thread*) ;
 int VOP_GETATTR (struct vnode*,struct vattr*,struct ucred*) ;
 scalar_t__ VOP_IS_TEXT (struct vnode*) ;

 int VWRITE ;

int
nfsvno_accchk(struct vnode *vp, accmode_t accmode, struct ucred *cred,
    struct nfsexstuff *exp, struct thread *p, int override, int vpislocked,
    u_int32_t *supportedtypep)
{
 struct vattr vattr;
 int error = 0, getret = 0;

 if (vpislocked == 0) {
  if (NFSVOPLOCK(vp, LK_SHARED) != 0) {
   error = EPERM;
   goto out;
  }
 }
 if (accmode & VWRITE) {






  if (NFSVNO_EXRDONLY(exp) ||
      (vp->v_mount->mnt_flag & MNT_RDONLY)) {
   switch (vp->v_type) {
   case 128:
   case 130:
   case 129:
    error = EROFS;
   default:
    break;
   }
  }





  if (VOP_IS_TEXT(vp) && error == 0)
   error = ETXTBSY;
 }
 if (error != 0) {
  if (vpislocked == 0)
   NFSVOPUNLOCK(vp, 0);
  goto out;
 }




 error = VOP_ACCESSX(vp, accmode, cred, p);
 if (error != 0 && (accmode & (VDELETE | VDELETE_CHILD))) {




  error = VOP_ACCESSX(vp, accmode | VEXPLICIT_DENY, cred, p);
  if (error == 0) {
   if (vp->v_type == 130) {
    accmode &= ~(VDELETE | VDELETE_CHILD);
    accmode |= VWRITE;
    error = VOP_ACCESSX(vp, accmode, cred, p);
   } else if (supportedtypep != ((void*)0)) {
    *supportedtypep &= ~NFSACCESS_DELETE;
   }
  }
 }





 if (override != NFSACCCHK_NOOVERRIDE &&
     (error == EPERM || error == EACCES)) {
  if (cred->cr_uid == 0 && (override & NFSACCCHK_ALLOWROOT))
   error = 0;
  else if (override & NFSACCCHK_ALLOWOWNER) {
   getret = VOP_GETATTR(vp, &vattr, cred);
   if (getret == 0 && cred->cr_uid == vattr.va_uid)
    error = 0;
  }
 }
 if (vpislocked == 0)
  NFSVOPUNLOCK(vp, 0);

out:
 NFSEXITCODE(error);
 return (error);
}
